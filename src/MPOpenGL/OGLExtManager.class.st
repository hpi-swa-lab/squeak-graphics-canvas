"
OGLExtManager handles OpenGL extension functions for OGL. Since extensions are specific for particular renderer/drivers all extensions must be looked up dynamically. I provide the technical means to handle extensions transparently for any number of contexts.

Declaring Extensions:
========================
Extension functions (and constants) have to be specifically declared. To declare functions and constants for an extension you need to do the following:
#1: Go to the CLASS side of OGLExtManager and add a category that has the same name as listed in glGet(GL_EXTENSIONS). For example, to use the ARB imaging extension this category must be named GL_ARB_imaging (even though the extension is referred to as 'ARB imaging' glGet will tell us that the name GL_ARB_imaging so that is what you need to use).
WARNING: The name must match EXACTLY, no extra spaces, watch for small and capital letters etc.

#2: Add a method which initializes the constants in this extension. The method itself MUST follow the convention to begin with 'initialize' and should then use the extension name. E.g., for initializing the constants in the ARB_imaging it should be called 'initializeArbImaging'.

The constants itself can be initialized by just copying them from the spec describing them and use the provided utility methods for initialization (just look over a few existing extensions). I am trying to make it easy for you to just copy those constants.

Note that all constants appear ONLY in the GLExtConstants - OpenGLConstants is exclusively used for standard OpenGL constants.

#3: Add the functions the extension defines. Generally, these should just be plain ffi call methods but there are three important issues:
	a) NEVER provide a 'module' for these functions. Since they are looked up by opengl specific means other ways are used and you MUST NOT provide a module. The extension this particular function is contained in is defined by the category and not by the module (this is to prevent confusion about 'I have no GL_ARB_imaging.dll' or even worse the possibility that on some system any such thing even exists (!)).
	b) NEVER do anything but just the plain FFI call (optionally followed by a plain return or call to #externalCallFailed). The method you are writing will actually be run in an entirely different place - you are only providing a template for the sake of your convenience (and speed). If you need more sophisticated error handling do this in the place where you call the method or provide a helper in OGL or something similar, but NEVER EVER DO THIS HERE.
	c) The calling convention is effectively ignored. Since it is platform specific it will in fact be replaced by the appropriate OS calling convention when used.

#4: Evaluate 'OGLExtManager initialize' which will add the constants to GLExtConstants and compile forwarder methods in OGL.

Using Extensions:
====================
Once you declared the extension, using it is simple. Since the constants defined by the extension are accessible through the GLExtConstants pool, you can just refer to them by name.

To invoke an extension method you simply invoke it via ogl, e.g., in order to invoke the 'glUnlockArraysEXT' function you would use something like:
	ogl glUnlockArraysEXT
etc.

IMPORTANT: You must never ever attempt to create a OGLExtManager explicitly. The OGLExtManager is transparently wrapped in OGL.

Implementation details:
===========================
In order to implement the dynamic lookup mechanism in the most convenient way, the OGLExtManager is always created as a 'unique subclass' of OGLExtManager. That is when you ask for a new extension manager using 'OGLExtManager new' you actually get a subclass of OGLExtManager which is denoted by an asterisk in front of it so it looks as *OGLExtManager.

The *OGLExtManager does not understand any of the function you have provided. When it runs into a message which it doesn't understand it performs the following functions:
1: First it looks if that method is in fact an extension method you defined.
2: If it is, it looks if the extension this method belongs to is present in the renderer it is bound to (e.g., the OGLExtManager's ogl inst var)
3: If the extension is present it looks at the functions you declared for this extension, and for each function
	- it copies the template method
	- it looks up calling convention / address of the function
	- it installs a new ffi call spec for that method
	- it adds this method to *OGLExtManager
4: Once all the function for the extension have been loaded it reinvokes the message which failed.

Preloading extensions:
=========================
As you can see from the implementation details, there is a certain overhead involved in handling extensions. In particular, there can be a noticable speed impact when an extension is loaded 'on demand' (e.g., when a message is not understood). To compensate for this, extensions can be loaded explicitly, by using, e.g.,
	ogl loadExtension: #'GL_ARB_imaging'.

Providing extensions as changesets:
=========================================
When creating a changeset to add a particular OpenGL extension, you should not include any of the auto-generated changes (neither methods nor constants) to OpenGL, GLExtConstants, or OGLExtManager.  In particular, including the changed GLExtConstants class definition will cause those who load the changeset to lose the constants for other extensions they may have loaded.

Instead, only include the initialization methods on the class side of OGLExtManager (eg: #initializeArbVertexProgram and #generateArbVertexProgramFunctions), and perhaps a test for the extension in OpenGL (eg: OpenGL>>hasArbVertexProgram).  Use code in the changeset postscript to generate extension functions and constants.  Continuing with the vertex program example, the postscript might look like this:

""Postscript:
Generate extension functions and initialize extension constants. Use a temporary changeset so we do not clutter up this one. And provide initials to prevent asking the user""

Utilities useAuthorInitials: 'generated' during: [
	| cs |
	cs _ Utilities useChangeSetNamed: 'generated' during: [
		OGLExtManager 
			generateArbVertexProgramFunctions;
			initialize].
	cs preambleString: '""catch-all changeset for generated functions""'.
]
"
Class {
	#name : #OGLExtManager,
	#superclass : #Object,
	#instVars : [
		'ogl'
	],
	#pools : [
		'GLExtConstants'
	],
	#category : 'MPOpenGL-Deprecated'
}

{ #category : #'class initialization' }
OGLExtManager class >> forwardExtMethod: aSelector [
	"Compile a forwarder method in OpenGL"
	| code parser fwdCode |
	code := self class sourceCodeAt: aSelector.
	parser := self parserClass new.
	parser parseSelector: code.
	code := code copyFrom: 1 to: (parser endOfLastToken min: code size).
	fwdCode := String streamContents:[:s|
		s nextPutAll: code.
		s crtab; nextPutAll: '"This method was automatically generated"'.
		s crtab; nextPutAll: '^glExt '; nextPutAll: code.
	].
	(OpenGL sourceCodeAt: aSelector ifAbsent:['']) = fwdCode ifTrue:[^self]. "no change"
	OpenGL compile: fwdCode classified: (self class organization categoryOfElement: aSelector).

]

{ #category : #'function helpers' }
OGLExtManager class >> generate: extension types: typeList functions: list [
	"Take a list of strings comprising open gl functions, and compile FFI functions here.
	See also parseEXTFunctions:do:."
	
	| typeMap signature1 signature2 body |
	(extension beginsWith: 'GL_')
		ifFalse: [^self error: 'suspicious extension name'].

	typeMap := Dictionary new.
	typeList pairsDo: [:string :exttype | typeMap at: string put: exttype].

	self parseEXTFunctions: list do: [:return :function :args |
		signature1 := String streamContents: [:s |
			s nextPutAll: function; nextPut: $(.
			args do: [:arg | s nextPutAll: arg second]
				separatedBy: [s nextPutAll: ', '].
			s nextPut: $)].
		signature2 := String streamContents: [:s |
			s nextPutAll: function.
			args isEmpty ifFalse: [
				s nextPutAll: ': '.
				args do: [:arg | s nextPutAll: arg second]
					separatedBy: [s nextPutAll: ' with: ']]].
		body := String streamContents: [:s |
			s crtab; nextPutAll: '"This method was generated by ', name, '"'.
			s crtab; nextPutAll: '<apicall: '.
			s nextPutAll: (self mapType: return using: typeMap); space.
			s print: function; space.
			s nextPutAll: '('.
			args do: [:arg | s nextPutAll: (self mapType: arg first using: typeMap)]
				separatedBy: [s space].
			s nextPutAll: ')>'; crtab.
			s nextPutAll: '^self externalCallFailed'.
		].
		self class "!" 
			compile: signature1,body classified: extension;
			compile: signature2,body classified: extension]
]

{ #category : #'GL_ARB_pixel_buffer_object' }
OGLExtManager class >> generateArbPixelBufferObjectFunctions [
	"There are no new functions defined by  GL_ARB_pixel_buffer_object (it relies on those introduced by GL_ARB_vertex_buffer_object)."
	
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> generateArbShaderObjectsFunctions [
	"self generateArbShaderObjectsFunctions"

	self generate: 'GL_ARB_shader_objects'
	types: #(
		'handleARB' ulong
		'charARB' char
		'uint' ulong
		'short' short
		'float' float
		'double' double
		'ubyte' unsignedByte
		'byte' byte
		'int' long
		'ushort' unsignedShort
		'enum' long
		'boolean' long
		'sizei' long
		'void' void
	)
	functions: #(
		'void DeleteObjectARB(handleARB obj)'
		'handleARB GetHandleARB(enum pname)'
		'void DetachObjectARB(handleARB containerObj, handleARB attachedObj)'
		'handleARB CreateShaderObjectARB(enum shaderType)'
"
		'void ShaderSourceARB(handleARB shaderObj, sizei count, const charARB **string, const int *length)'
"		
		'void ShaderSourceARB(handleARB shaderObj, sizei count, const charARB* string, const int *length)'

		'void CompileShaderARB(handleARB shaderObj)'
		'handleARB CreateProgramObjectARB()'
		'void AttachObjectARB(handleARB containerObj, handleARB obj)'
		'void LinkProgramARB(handleARB programObj)'
		'void UseProgramObjectARB(handleARB programObj)'
		'void ValidateProgramARB(handleARB programObj)'
		'void Uniform1fARB(int location, float v0)'
		'void Uniform2fARB(int location, float v0, float v1)'
		'void Uniform3fARB(int location, float v0, float v1, float v2)'
		'void Uniform4fARB(int location, float v0, float v1, float v2, float v3)'
		'void Uniform1iARB(int location, int v0)'
		'void Uniform2iARB(int location, int v0, int v1)'
		'void Uniform3iARB(int location, int v0, int v1, int v2)'
		'void Uniform4iARB(int location, int v0, int v1, int v2, int v3)'
		'void Uniform1fvARB(int location, sizei count, const float *value)'
		'void Uniform2fvARB(int location, sizei count, const float *value)'
		'void Uniform3fvARB(int location, sizei count, const float *value)'
		'void Uniform4fvARB(int location, sizei count, const float *value)'
		'void Uniform1ivARB(int location, sizei count, const int *value)'
		'void Uniform2ivARB(int location, sizei count, const int *value)'
		'void Uniform3ivARB(int location, sizei count, const int *value)'
		'void Uniform4ivARB(int location, sizei count, const int *value)'
		'void UniformMatrix2fvARB(int location, sizei count, boolean transpose, const float *value)'
		'void UniformMatrix3fvARB(int location, sizei count, boolean transpose, const float *value)'
		'void UniformMatrix4fvARB(int location, sizei count, boolean transpose, const float *value)'
		'void GetObjectParameterfvARB(handleARB obj, enum pname, float *params)'
		'void GetObjectParameterivARB(handleARB obj, enum pname, int *params)'
		'void GetInfoLogARB(handleARB obj, sizei maxLength, sizei *length, charARB *infoLog)'
		'void GetAttachedObjectsARB(handleARB containerObj, sizei maxCount, sizei *count, handleARB *obj)'
		'int GetUniformLocationARB(handleARB programObj, const charARB *name)'
		'void GetActiveUniformARB(handleARB programObj, uint index, sizei maxLength, sizei *length, int *size, enum *type, charARB *name)'
		'void GetUniformfvARB(handleARB programObj, int location, float *params)'
		'void GetUniformivARB(handleARB programObj, int location, int *params)'
		'void GetShaderSourceARB(handleARB obj, sizei maxLength, sizei *length, charARB *source)'
	)

]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> generateArbVertexBufferObjectFunctions [
	"self generateArbVertexBufferObjectFunctions"

	self generate: 'GL_ARB_vertex_buffer_object'
	types: #(
		'uint' ulong
		'short' short
		'float' float
		'double' double
		'ubyte' unsignedByte
		'byte' byte
		'int' long
		'ushort' unsignedShort
		'enum' long
		'boolean' long
		'sizei' long
		'void' void
		'long' long
		'sizeiptrARB' long
		'intptrARB' long
	)
	functions: #(
		'void DeleteBuffersARB(sizei n, const uint *buffers);'
		'void GenBuffersARB(sizei n, uint *buffers);'
		'boolean IsBufferARB(uint buffer);'
		'void BufferDataARB(enum target, sizeiptrARB size, const void *data, enum usage);'
		'void BufferSubDataARB(enum target, intptrARB offset, sizeiptrARB size, const void *data);'
		'void GetBufferSubDataARB(enum target, intptrARB offset, sizeiptrARB size, void *data);'
		'void* MapBufferARB(enum target, enum access);'
		'boolean UnmapBufferARB(enum target);'
		'void GetBufferParameterivARB(enum target, enum pname, int *params);'
		'void GetBufferPointervARB(enum target, enum pname, void **params);'
	)

]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> generateArbVertexProgramFunctions [
	"self generateArbVertexProgramFunctions"

Utilities useAuthorInitials: 'bf' during: [
	self generate: 'GL_ARB_vertex_program'
	types: #(
		'uint' ulong
		'short' short
		'float' float
		'double' double
		'ubyte' unsignedByte
		'byte' byte
		'int' long
		'ushort' unsignedShort
		'enum' long
		'boolean' long
		'sizei' long
		'void' void
	)
	functions: #(
		'void VertexAttrib1sARB(uint index, short x);'
		'void VertexAttrib1fARB(uint index, float x);'
		'void VertexAttrib1dARB(uint index, double x);'
		'void VertexAttrib2sARB(uint index, short x, short y);'
		'void VertexAttrib2fARB(uint index, float x, float y);'
		'void VertexAttrib2dARB(uint index, double x, double y);'
		'void VertexAttrib3sARB(uint index, short x, short y, short z);'
		'void VertexAttrib3fARB(uint index, float x, float y, float z);'
		'void VertexAttrib3dARB(uint index, double x, double y, double z);'
		'void VertexAttrib4sARB(uint index, short x, short y, short z, short w);'
		'void VertexAttrib4fARB(uint index, float x, float y, float z, float w);'
		'void VertexAttrib4dARB(uint index, double x, double y, double z, double w);'
		'void VertexAttrib4NubARB(uint index, ubyte x, ubyte y, ubyte z, ubyte w);'
		'void VertexAttrib1svARB(uint index, const short *v);'
		'void VertexAttrib1fvARB(uint index, const float *v);'
		'void VertexAttrib1dvARB(uint index, const double *v);'
		'void VertexAttrib2svARB(uint index, const short *v);'
		'void VertexAttrib2fvARB(uint index, const float *v);'
		'void VertexAttrib2dvARB(uint index, const double *v);'
		'void VertexAttrib3svARB(uint index, const short *v);'
		'void VertexAttrib3fvARB(uint index, const float *v);'
		'void VertexAttrib3dvARB(uint index, const double *v);'
		'void VertexAttrib4bvARB(uint index, const byte *v);'
		'void VertexAttrib4svARB(uint index, const short *v);'
		'void VertexAttrib4ivARB(uint index, const int *v);'
		'void VertexAttrib4ubvARB(uint index, const ubyte *v);'
		'void VertexAttrib4usvARB(uint index, const ushort *v);'
		'void VertexAttrib4uivARB(uint index, const uint *v);'
		'void VertexAttrib4fvARB(uint index, const float *v);'
		'void VertexAttrib4dvARB(uint index, const double *v);'
		'void VertexAttrib4NbvARB(uint index, const byte *v);'
		'void VertexAttrib4NsvARB(uint index, const short *v);'
		'void VertexAttrib4NivARB(uint index, const int *v);'
		'void VertexAttrib4NubvARB(uint index, const ubyte *v);'
		'void VertexAttrib4NusvARB(uint index, const ushort *v);'
		'void VertexAttrib4NuivARB(uint index, const uint *v);'
		'void VertexAttribPointerARB(uint index, int size, enum type, boolean normalized, sizei stride, const void *pointer);'
		'void EnableVertexAttribArrayARB(uint index);'
		'void DisableVertexAttribArrayARB(uint index);'
		'void ProgramStringARB(enum target, enum format, sizei len, const void *string);'
		'void BindProgramARB(enum target, uint program);'
		'void DeleteProgramsARB(sizei n, const uint *programs);'
		'void GenProgramsARB(sizei n, uint *programs);'
		'void ProgramEnvParameter4dARB(enum target, uint index, double x, double y, double z, double w);'
		'void ProgramEnvParameter4dvARB(enum target, uint index, const double *params);'
		'void ProgramEnvParameter4fARB(enum target, uint index, float x, float y, float z, float w);'
		'void ProgramEnvParameter4fvARB(enum target, uint index, const float *params);'
		'void ProgramLocalParameter4dARB(enum target, uint index, double x, double y, double z, double w);'
		'void ProgramLocalParameter4dvARB(enum target, uint index, const double *params);'
		'void ProgramLocalParameter4fARB(enum target, uint index, float x, float y, float z, float w);'
		'void ProgramLocalParameter4fvARB(enum target, uint index, const float *params);'
		'void GetProgramEnvParameterdvARB(enum target, uint index, double *params);'
		'void GetProgramEnvParameterfvARB(enum target, uint index, float *params);'
		'void GetProgramLocalParameterdvARB(enum target, uint index, double *params);'
		'void GetProgramLocalParameterfvARB(enum target, uint index, float *params);'
		'void GetProgramivARB(enum target, enum pname, int *params);'
		'void GetProgramStringARB(enum target, enum pname, void *string);'
		'void GetVertexAttribdvARB(uint index, enum pname, double *params);'
		'void GetVertexAttribfvARB(uint index, enum pname, float *params);'
		'void GetVertexAttribivARB(uint index, enum pname, int *params);'
		'void GetVertexAttribPointervARB(uint index, enum pname, void **pointer);'
		'boolean IsProgramARB(uint program);'
	)
]
]

{ #category : #'GL_ARB_vertex_shader' }
OGLExtManager class >> generateArbVertexShaderFunctions [
	"self generateArbVertexShaderFunctions"

	self generate: 'GL_ARB_vertex_shader'
	types: #(
		'handleARB' ulong
		'charARB' char
		'uint' ulong
		'short' short
		'float' float
		'double' double
		'ubyte' unsignedByte
		'byte' byte
		'int' long
		'ushort' unsignedShort
		'enum' long
		'boolean' long
		'sizei' long
		'void' void
	)
	functions: #(
    		'void BindAttribLocationARB(handleARB programObj, uint index, const charARB *name);'
		'void GetActiveAttribARB(handleARB programObj, uint index, sizei maxLength, sizei *length, int *size, enum *type, charARB *name);'
		'int GetAttribLocationARB(handleARB programObj, const charARB *name);'
	)

]

{ #category : #'GL_EXT_framebuffer_blit' }
OGLExtManager class >> generateExtFramebufferBlitFunctions [
	"self generateExtFramebufferBlitFunctions"

	self generate: 'GL_EXT_framebuffer_blit'
	types: #(
		'handleARB' ulong
		'charARB' char
		'uint' ulong
		'short' short
		'float' float
		'double' double
		'ubyte' unsignedByte
		'byte' byte
		'int' long
		'ushort' unsignedShort
		'enum' long
		'boolean' long
		'bitfield' long
		'sizei' long
		'void' void
	)
	functions: #(
		'void BlitFramebufferEXT(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, bitfield mask, enum filter)'
	)

]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> generateExtFramebufferObjectFunctions [
	"self generateExtFramebufferObjectFunctions"

	self generate: 'GL_EXT_framebuffer_object'
	types: #(
		'handleARB' ulong
		'charARB' char
		'uint' ulong
		'short' short
		'float' float
		'double' double
		'ubyte' unsignedByte
		'byte' byte
		'int' long
		'ushort' unsignedShort
		'enum' long
		'boolean' long
		'sizei' long
		'void' void
	)
	functions: #(
		'boolean IsRenderbufferEXT (uint buffer)'
		'void BindRenderbufferEXT (enum target, uint buffer)'
		'void DeleteRenderbuffersEXT (sizei n, const uint *buffers)'
		'void GenRenderbuffersEXT (sizei n, uint *buffers)'
		'void RenderbufferStorageEXT (enum target, enum internalformat, sizei width, sizei height)'
		'void GetRenderbufferParameterivEXT (enum target, enum pnames, int *params)'
		'boolean IsFramebufferEXT (uint buffer)'
		'void BindFramebufferEXT (enum target, uint buffer)'
		'void DeleteFramebuffersEXT (sizei n, const uint *buffers)'
		'void GenFramebuffersEXT (sizei n, uint *buffers)'
		'enum CheckFramebufferStatusEXT (enum target)'
		'void FramebufferTexture1DEXT (enum target, enum attachment, enum textarget, uint texture, int level)'
		'void FramebufferTexture2DEXT (enum target, enum attachment, enum textarget, uint texture, int level)'
		'void FramebufferTexture3DEXT (enum target, enum attachment, enum textarget, uint texture, int level, int zoffset)'
		'void FramebufferRenderbufferEXT (enum target, enum attachment, enum renderbuffertarget, uint renderbuffer)'
		'void GetFramebufferAttachmentParameterivEXT (enum target, enum attachment, enum pname, int *params)'
		'void GenerateMipmapEXT (enum target)'
	)

]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glAttachObjectARB: containerObj with: obj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glAttachObjectARB' (ulong ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_shader' }
OGLExtManager class >> glBindAttribLocationARB: programObj with: index with: name [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBindAttribLocationARB' (ulong ulong char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glBindBufferARB: target with: buffer [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBindBufferARB' (long ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glBindFramebufferEXT: target with: buffer [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBindFramebufferEXT' (long ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glBindProgramARB: target with: program [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBindProgramARB' (long ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glBindRenderbufferEXT: target with: buffer [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBindRenderbufferEXT' (long ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_blit' }
OGLExtManager class >> glBlitFramebufferEXT: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBlitFramebufferEXT' (long long long long long long long long long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glBufferDataARB: target with: size with: data with: usage [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBufferDataARB' (long long void* long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glBufferSubDataARB: target with: offset with: size with: data [
	"This method was generated by OGLExtManager"
	<apicall: void 'glBufferSubDataARB' (long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glCheckFramebufferStatusEXT: target [
	"This method was generated by OGLExtManager"
	<apicall: long 'glCheckFramebufferStatusEXT' (long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_multitexture' }
OGLExtManager class >> glClientActiveTextureARB: texture [
	"This method was automatically generated."
	"void glClientActiveTextureARB(GLenum texture);"
	<apicall: void 'glClientActiveTextureARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glCompileShaderARB: shaderObj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glCompileShaderARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glCompressedTexImage1DARB: target with: level with: internalformat with: width with: border with: imageSize with: data [
	"void glCompressedTexImage1DARB(enum target, int level,
                                 enum internalformat, sizei width,
                                 int border, sizei imageSize,
                                 const void *data);"
	<apicall: void 'glCompressedTexImage1DARB' (long long long long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glCompressedTexImage2DARB: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [
	"void glCompressedTexImage2DARB(enum target, int level,
                                 enum internalformat, sizei width,
                                 sizei height,
                                 int border, sizei imageSize,
                                 const void *data);"
	<apicall: void 'glCompressedTexImage2DARB' (long long long long long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glCompressedTexImage3DARB: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [
	"void glCompressedTexImage3DARB(enum target, int level,
                                 enum internalformat, sizei width,
                                 sizei height, sizei depth,
                                 int border, sizei imageSize,
                                 const void *data);"
	<apicall: void 'glCompressedTexImage3DARB' (long long long long long long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glCompressedTexSubImage1DARB: target with: level with: xoffset with: width with: aFormat with: imageSize with: data [
	"void CompressedTexSubImage1DARB(enum target, int level, 
                                    int xoffset, sizei height,
                                    enum format, sizei imageSize,
                                    const void *data);"
	<apicall: void 'glCompressedTexImage2DARB' (long long long long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glCompressedTexSubImage2DARB: target with: level with: xoffset with: yoffset with: width with: height with: aFormat with: imageSize with: data [
	"void CompressedTexSubImage2DARB(enum target, int level, 
                                    int xoffset, int yoffset,
                                    sizei width, sizei height,
                                    enum format, sizei imageSize,
                                    const void *data);"
	<apicall: void 'glCompressedTexImage2DARB' (long long long long long long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glCompressedTexSubImage3DARB: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: aFormat with: imageSize with: data [
	"void CompressedTexSubImage3DARB(enum target, int level, 
                                    int xoffset, int yoffset,
                                    int zoffset, sizei width,
                                    sizei height, sizei depth,
                                    enum format, sizei imageSize,
                                    const void *data);"
	<apicall: void 'glCompressedTexImage2DARB' (long long long long long long long long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glCreateProgramObjectARB [
	"This method was generated by OGLExtManager"
	<apicall: ulong 'glCreateProgramObjectARB' ()>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glCreateShaderObjectARB: shaderType [
	"This method was generated by OGLExtManager"
	<apicall: ulong 'glCreateShaderObjectARB' (long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glDeleteBuffersARB: n with: buffers [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDeleteBuffersARB' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glDeleteFramebuffersEXT: n with: buffers [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDeleteFramebuffersEXT' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glDeleteObjectARB: obj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDeleteObjectARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glDeleteProgramsARB: n with: programs [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDeleteProgramsARB' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glDeleteRenderbuffersEXT: n with: buffers [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDeleteRenderbuffersEXT' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glDetachObjectARB: containerObj with: attachedObj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDetachObjectARB' (ulong ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glDisableVertexAttribArrayARB: index [
	"This method was generated by OGLExtManager"
	<apicall: void 'glDisableVertexAttribArrayARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glEnableVertexAttribArrayARB: index [
	"This method was generated by OGLExtManager"
	<apicall: void 'glEnableVertexAttribArrayARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glFramebufferRenderbufferEXT: target with: attachment with: renderbuffertarget with: renderbuffer [
	"This method was generated by OGLExtManager"
	<apicall: void 'glFramebufferRenderbufferEXT' (long long long ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glFramebufferTexture1DEXT: target with: attachment with: textarget with: texture with: level [
	"This method was generated by OGLExtManager"
	<apicall: void 'glFramebufferTexture1DEXT' (long long long ulong long)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glFramebufferTexture2DEXT: target with: attachment with: textarget with: texture with: level [
	"This method was generated by OGLExtManager"
	<apicall: void 'glFramebufferTexture2DEXT' (long long long ulong long)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glFramebufferTexture3DEXT: target with: attachment with: textarget with: texture with: level with: zoffset [
	"This method was generated by OGLExtManager"
	<apicall: void 'glFramebufferTexture3DEXT' (long long long ulong long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glGenBuffersARB: n with: buffers [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGenBuffersARB' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glGenFramebuffersEXT: n with: buffers [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGenFramebuffersEXT' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGenProgramsARB: n with: programs [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGenProgramsARB' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glGenRenderbuffersEXT: n with: buffers [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGenRenderbuffersEXT' (long ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glGenerateMipmapEXT: target [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGenerateMipmapEXT' (long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_shader' }
OGLExtManager class >> glGetActiveAttribARB: programObj with: index with: maxLength with: length with: size with: type with: name [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetActiveAttribARB' (ulong ulong long long* long* long* char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetActiveUniformARB: programObj with: index with: maxLength with: length with: size with: type with: name [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetActiveUniformARB' (ulong ulong long long* long* long* char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetAttachedObjectsARB: containerObj with: maxCount with: count with: obj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetAttachedObjectsARB' (ulong long long* ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_shader' }
OGLExtManager class >> glGetAttribLocationARB: programObj with: name [
	"This method was generated by OGLExtManager"
	<apicall: long 'glGetAttribLocationARB' (ulong char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glGetBufferParameterivARB: target with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetBufferParameterivARB' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glGetBufferPointervARB: target with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetBufferPointervARB' (long long void**)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glGetBufferSubDataARB: target with: offset with: size with: data [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetBufferSubDataARB' (long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> glGetCompressedTexImageARB: target with: lod with: img [
	"void GetCompressedTexImageARB(enum target, int lod,
                                    void *img);"
	<apicall: void 'glCompressedTexImage1DARB' (long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glGetFramebufferAttachmentParameterivEXT: target with: attachment with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetFramebufferAttachmentParameterivEXT' (long long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetHandleARB: pname [
	"This method was generated by OGLExtManager"
	<apicall: ulong 'glGetHandleARB' (long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetInfoLogARB: obj with: maxLength with: length with: infoLog [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetInfoLogARB' (ulong long long* char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetObjectParameterfvARB: obj with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetObjectParameterfvARB' (ulong long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetObjectParameterivARB: obj with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetObjectParameterivARB' (ulong long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetProgramEnvParameterdvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetProgramEnvParameterdvARB' (long ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetProgramEnvParameterfvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetProgramEnvParameterfvARB' (long ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetProgramLocalParameterdvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetProgramLocalParameterdvARB' (long ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetProgramLocalParameterfvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetProgramLocalParameterfvARB' (long ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetProgramStringARB: target with: pname with: string [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetProgramStringARB' (long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetProgramivARB: target with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetProgramivARB' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glGetRenderbufferParameterivEXT: target with: pnames with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetRenderbufferParameterivEXT' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetShaderSourceARB: obj with: maxLength with: length with: source [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetShaderSourceARB' (ulong long long* char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetUniformLocationARB: programObj with: name [
	"This method was generated by OGLExtManager"
	<apicall: long 'glGetUniformLocationARB' (ulong char*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetUniformfvARB: programObj with: location with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetUniformfvARB' (ulong long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glGetUniformivARB: programObj with: location with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetUniformivARB' (ulong long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetVertexAttribPointervARB: index with: pname with: pointer [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetVertexAttribPointervARB' (ulong long void**)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetVertexAttribdvARB: index with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetVertexAttribdvARB' (ulong long double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetVertexAttribfvARB: index with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetVertexAttribfvARB' (ulong long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glGetVertexAttribivARB: index with: pname with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glGetVertexAttribivARB' (ulong long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glIsBufferARB: buffer [
	"This method was generated by OGLExtManager"
	<apicall: long 'glIsBufferARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glIsFramebufferEXT: buffer [
	"This method was generated by OGLExtManager"
	<apicall: long 'glIsFramebufferEXT' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glIsProgramARB: program [
	"This method was generated by OGLExtManager"
	<apicall: long 'glIsProgramARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glIsRenderbufferEXT: buffer [
	"This method was generated by OGLExtManager"
	<apicall: long 'glIsRenderbufferEXT' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glLinkProgramARB: programObj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glLinkProgramARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_transpose_matrix' }
OGLExtManager class >> glLoadTransposeMatrixf: m [

	"This method was automatically generated."
	"void glLoadTransposeMatrixf(GLfloat* m);"
	<apicall: void 'glLoadTransposeMatrixf' (float*) >
	^self externalCallFailed
"	^self glLoadMatrixf: m transposed."

]

{ #category : #'GL_EXT_compiled_vertex_array' }
OGLExtManager class >> glLockArraysEXT: first with: count [
	"void glLockArraysEXT (int first, sizei count)"
	<apicall: void 'glLockArraysEXT' (long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glMapBufferARB: target with: access [
	"This method was generated by OGLExtManager"
	<apicall: void* 'glMapBufferARB' (long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_transpose_matrix' }
OGLExtManager class >> glMultTransposeMatrixf: m [

	"This method was automatically generated."
	"void glMultTransposeMatrixf(GLfloat* m);"
	<apicall: void 'glMultTransposeMatrixf' (float*) >
	^self externalCallFailed
"	^self glMultMatrixf: m transposed."
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramEnvParameter4dARB: target with: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramEnvParameter4dARB' (long ulong double double double double)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramEnvParameter4dvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramEnvParameter4dvARB' (long ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramEnvParameter4fARB: target with: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramEnvParameter4fARB' (long ulong float float float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramEnvParameter4fvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramEnvParameter4fvARB' (long ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramLocalParameter4dARB: target with: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramLocalParameter4dARB' (long ulong double double double double)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramLocalParameter4dvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramLocalParameter4dvARB' (long ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramLocalParameter4fARB: target with: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramLocalParameter4fARB' (long ulong float float float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramLocalParameter4fvARB: target with: index with: params [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramLocalParameter4fvARB' (long ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glProgramStringARB: target with: format with: len with: string [
	"This method was generated by OGLExtManager"
	<apicall: void 'glProgramStringARB' (long long long void*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> glRenderbufferStorageEXT: target with: internalformat with: width with: height [
	"This method was generated by OGLExtManager"
	<apicall: void 'glRenderbufferStorageEXT' (long long long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glShaderSourceARB: shaderObj with: count with: string with: length [
	"This method was generated by OGLExtManager"
	<apicall: void 'glShaderSourceARB' (ulong long char* long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform1fARB: location with: v0 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform1fARB' (long float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform1fvARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform1fvARB' (long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform1iARB: location with: v0 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform1iARB' (long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform1ivARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform1ivARB' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform2fARB: location with: v0 with: v1 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform2fARB' (long float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform2fvARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform2fvARB' (long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform2iARB: location with: v0 with: v1 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform2iARB' (long long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform2ivARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform2ivARB' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform3fARB: location with: v0 with: v1 with: v2 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform3fARB' (long float float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform3fvARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform3fvARB' (long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform3iARB: location with: v0 with: v1 with: v2 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform3iARB' (long long long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform3ivARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform3ivARB' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform4fARB: location with: v0 with: v1 with: v2 with: v3 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform4fARB' (long float float float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform4fvARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform4fvARB' (long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform4iARB: location with: v0 with: v1 with: v2 with: v3 [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform4iARB' (long long long long long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniform4ivARB: location with: count with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniform4ivARB' (long long long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniformMatrix2fvARB: location with: count with: transpose with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniformMatrix2fvARB' (long long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniformMatrix3fvARB: location with: count with: transpose with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniformMatrix3fvARB' (long long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUniformMatrix4fvARB: location with: count with: transpose with: value [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUniformMatrix4fvARB' (long long long float*)>
	^self externalCallFailed
]

{ #category : #'GL_EXT_compiled_vertex_array' }
OGLExtManager class >> glUnlockArraysEXT [
	"void glUnlockArraysEXT (void)"
	<apicall: void 'glUnlockArraysEXT' (void)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> glUnmapBufferARB: target [
	"This method was generated by OGLExtManager"
	<apicall: long 'glUnmapBufferARB' (long)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glUseProgramObjectARB: programObj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glUseProgramObjectARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> glValidateProgramARB: programObj [
	"This method was generated by OGLExtManager"
	<apicall: void 'glValidateProgramARB' (ulong)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib1dARB: index with: x [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib1dARB' (ulong double)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib1dvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib1dvARB' (ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib1fARB: index with: x [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib1fARB' (ulong float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib1fvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib1fvARB' (ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib1sARB: index with: x [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib1sARB' (ulong short)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib1svARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib1svARB' (ulong short*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib2dARB: index with: x with: y [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib2dARB' (ulong double double)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib2dvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib2dvARB' (ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib2fARB: index with: x with: y [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib2fARB' (ulong float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib2fvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib2fvARB' (ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib2sARB: index with: x with: y [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib2sARB' (ulong short short)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib2svARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib2svARB' (ulong short*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib3dARB: index with: x with: y with: z [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib3dARB' (ulong double double double)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib3dvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib3dvARB' (ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib3fARB: index with: x with: y with: z [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib3fARB' (ulong float float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib3fvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib3fvARB' (ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib3sARB: index with: x with: y with: z [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib3sARB' (ulong short short short)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib3svARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib3svARB' (ulong short*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NbvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NbvARB' (ulong byte*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NivARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NivARB' (ulong long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NsvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NsvARB' (ulong short*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NubARB: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NubARB' (ulong unsignedByte unsignedByte unsignedByte unsignedByte)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NubvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NubvARB' (ulong unsignedByte*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NuivARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NuivARB' (ulong ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4NusvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4NusvARB' (ulong unsignedShort*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4bvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4bvARB' (ulong byte*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4dARB: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4dARB' (ulong double double double double)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4dvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4dvARB' (ulong double*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4fARB: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4fARB' (ulong float float float float)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4fvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4fvARB' (ulong float*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4ivARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4ivARB' (ulong long*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4sARB: index with: x with: y with: z with: w [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4sARB' (ulong short short short short)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4svARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4svARB' (ulong short*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4ubvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4ubvARB' (ulong unsignedByte*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4uivARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4uivARB' (ulong ulong*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttrib4usvARB: index with: v [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttrib4usvARB' (ulong unsignedShort*)>
	^self externalCallFailed
]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> glVertexAttribPointerARB: index with: size with: type with: normalized with: stride with: pointer [
	"This method was generated by OGLExtManager"
	<apicall: void 'glVertexAttribPointerARB' (ulong long long long long void*)>
	^self externalCallFailed
]

{ #category : #'class initialization' }
OGLExtManager class >> initialize [
	"OGLExtManager initialize"
	"Initialize all registered extensions. Please see the class comment."
	self class selectorsAndMethodsDo:[:sel :meth|
		(sel ~= #initialize and:[sel beginsWith: 'initialize']) ifTrue:[self perform: sel].
		((sel beginsWith: 'gl') and:[meth numLiterals > 0 and:[(meth literalAt: 1) isKindOf: ExternalLibraryFunction]]) ifTrue:[
			self forwardExtMethod: sel.
		].
	].
	GLExtConstants initialize.
]

{ #category : #'GL_ARB_fragment_shader' }
OGLExtManager class >> initializeArbFragmentShader [
	"self initializeArbFragmentShader"
	"Initialize ARB_fragment_shader constants"

	self install: 'ArbFragmentShader' withEXTConstants: #(
		'FRAGMENT_SHADER_ARB				0x8B30'
		'MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB		0x8B49'
		'MAX_TEXTURE_COORDS_ARB				0x8871'
		'MAX_TEXTURE_IMAGE_UNITS_ARB			0x8872'
		'FRAGMENT_SHADER_DERIVATIVE_HINT_ARB		0x8B8B'
	).
]

{ #category : #'GL_ARB_multisample' }
OGLExtManager class >> initializeArbMultisample [
	"GLExtensions initialize"
	"Initialize GL_ARB_MULTISAMPLE constants; this is only a small subset"
	self install: 'ArbMutlisample' withEXTConstants: #(
		'MULTISAMPLE_ARB	0x809D'
		'MULTISAMPLE_FILTER_HINT_NV	0x8534'
	)

]

{ #category : #'GL_ARB_pixel_buffer_object' }
OGLExtManager class >> initializeArbPixelBufferObject [
		"self initializeArbPixelBufferObject"
	"Initialize ARB_pixel_buffer_object constants."
	self install: 'ArbPixelBufferObject' withEXTConstants: #(
		"glBindBufferARB/glBufferDataARB/glBufferSubDataARB/etc."	
		'PIXEL_PACK_BUFFER_ARB					0x88EB'
		'PIXEL_UNPACK_BUFFER_ARB				0x88EC'

		"glGet"
		'PIXEL_PACK_BUFFER_BINDING_ARB			0x88ED'
		'PIXEL_UNPACK_BUFFER_BINDING_ARB		0x88EF'
	)	
]

{ #category : #'GL_ARB_shader_objects' }
OGLExtManager class >> initializeArbShaderObjects [
	"self initializeArbShaderObjects"
	"Initialize ARB_shader_objects constants"

	self install: 'ArbShaderObjects' withEXTConstants: #(
		'PROGRAM_OBJECT_ARB 	0x8B40
'
		'SHADER_OBJECT_ARB 	0x8B48'
		'OBJECT_TYPE_ARB 	0x8B4E'
		'OBJECT_SUBTYPE_ARB 	0x8B4F'
		'FLOAT_VEC2_ARB 	0x8B50'
		'FLOAT_VEC3_ARB 	0x8B51'
		'FLOAT_VEC4_ARB 	0x8B52'
		'INT_VEC2_ARB 	0x8B53'
		'INT_VEC3_ARB 	0x8B54'
		'INT_VEC4_ARB 	0x8B55'
		'BOOL_ARB 	0x8B56'
		'BOOL_VEC2_ARB 	0x8B57'
		'BOOL_VEC3_ARB 	0x8B58'
		'BOOL_VEC4_ARB 	0x8B59'
		'FLOAT_MAT2_ARB 	0x8B5A'
		'FLOAT_MAT3_ARB 	0x8B5B'
		'FLOAT_MAT4_ARB 	0x8B5C'
		'SAMPLER_1D_ARB 	0x8B5D'
		'SAMPLER_2D_ARB 	0x8B5E'
		'SAMPLER_3D_ARB 	0x8B5F'
		'SAMPLER_CUBE_ARB 	0x8B60'
		'SAMPLER_1D_SHADOW_ARB 	0x8B61'
		'SAMPLER_2D_SHADOW_ARB 	0x8B62'
		'SAMPLER_2D_RECT_ARB 	0x8B63'
		'SAMPLER_2D_RECT_SHADOW_ARB 	0x8B64'
		'OBJECT_DELETE_STATUS_ARB 	0x8B80'
		'OBJECT_COMPILE_STATUS_ARB 	0x8B81'
		'OBJECT_LINK_STATUS_ARB 	0x8B82'
		'OBJECT_VALIDATE_STATUS_ARB 	0x8B83'
		'OBJECT_INFO_LOG_LENGTH_ARB 	0x8B84'
		'OBJECT_ATTACHED_OBJECTS_ARB 	0x8B85'
		'OBJECT_ACTIVE_UNIFORMS_ARB 	0x8B86'
		'OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB 	0x8B87'
		'OBJECT_SHADER_SOURCE_LENGTH_ARB 		0x8B88'
	)
]

{ #category : #'GL_ARB_texture_compression' }
OGLExtManager class >> initializeArbTextureCompression [
	"OGLExtManager initialize"
	"Initialize ARB_texture_compression constants"
	self install: 'ArbTextureCompression' withEXTConstants: #(
		"glTexImage/glCopyTexImage"
		'COMPRESSED_ALPHA_ARB				0x84E9'
		'COMPRESSED_LUMINANCE_ARB			0x84EA'
		'COMPRESSED_LUMINANCE_ALPHA_ARB			0x84EB'
		'COMPRESSED_INTENSITY_ARB			0x84EC'
		'COMPRESSED_RGB_ARB				0x84ED'
		'COMPRESSED_RGBA_ARB				0x84EE'

		"glHint/glGet"
		'TEXTURE_COMPRESSION_HINT_ARB			0x84EF'

		"glGetTexLevelParameter"
		'TEXTURE_COMPRESSED_IMAGE_SIZE_ARB		0x86A0'
		'TEXTURE_COMPRESSED_ARB				0x86A1'

		"glGet*"
		'NUM_COMPRESSED_TEXTURE_FORMATS_ARB		0x86A2'
		'COMPRESSED_TEXTURE_FORMATS_ARB			0x86A3'
	)

]

{ #category : #'GL_ARB_transpose_matrix' }
OGLExtManager class >> initializeArbTransposeMatrix [
	"OGLExtManager initialize"
	"Initialize ARB:=texture:=compression constants"
	self install: 'ArbTransposeMatrix' withEXTConstants: #(	)

]

{ #category : #'GL_ARB_vertex_buffer_object' }
OGLExtManager class >> initializeArbVertexBufferObject [
		"self initializeArbVertexBufferObject"
	"Initialize ARB_vertex_buffer_object constants"
	self install: 'ArbVertexBufferObject' withEXTConstants: #(
		"glBindBufferARB/glBufferDataARB/glBufferSubDataARB/etc."
		'ARRAY_BUFFER_ARB				0x8892'
		'ELEMENT_ARRAY_BUFFER_ARB 		0x8893'

		"glGet"
		'ARRAY_BUFFER_BINDING_ARB						0x8894'
		'ELEMENT_ARRAY_BUFFER_BINDING_ARB				0x8895'
		'VERTEX_ARRAY_BUFFER_BINDING_ARB				0x8896'
		'NORMAL_ARRAY_BUFFER_BINDING_ARB				0x8897'
		'COLOR_ARRAY_BUFFER_BINDING_ARB				0x8898'
		'INDEX_ARRAY_BUFFER_BINDING_ARB					0x8899'
		'TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB		0x889A'
		'EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB			0x889B'
		'SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB		0x889C'
		'FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB		0x889D'
		'WEIGHT_ARRAY_BUFFER_BINDING_ARB				0x889E'

		"glGetVertexAttribivARB"
		'VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB		0x889F'

		"glBufferDataARB"
		'STREAM_DRAW_ARB									0x88E0'
		'STREAM_READ_ARB									0x88E1'
		'STREAM_COPY_ARB									0x88E2'
		'STATIC_DRAW_ARB									0x88E4'
		'STATIC_READ_ARB									0x88E5'
		'STATIC_COPY_ARB									0x88E6'
		'DYNAMIC_DRAW_ARB								0x88E8'
		'DYNAMIC_READ_ARB								0x88E9'
		'DYNAMIC_COPY_ARB								0x88EA'

		"glMapBufferARB"
		'READ_ONLY_ARB							0x88B8'
		'WRITE_ONLY_ARB							0x88B9'
		'READ_WRITE_ARB							0x88BA'
	
		"glGetBufferParameterivARB"
		'BUFFER_SIZE_ARB							0x8764'
		'BUFFER_USAGE_ARB							0x8765'
		'BUFFER_ACCESS_ARB						0x88BB'
		'BUFFER_MAPPED_ARB						0x88BC'
	)

]

{ #category : #'GL_ARB_vertex_program' }
OGLExtManager class >> initializeArbVertexProgram [
	"self initializeArbVertexProgram"
	"Initialize ARB_vertex_program constants"

	self install: 'ArbVertexProgram' withEXTConstants: #(
		'VERTEX_PROGRAM_ARB		0x8620'
		'VERTEX_PROGRAM_POINT_SIZE_ARB		0x8642'
		'VERTEX_PROGRAM_TWO_SIDE_ARB		0x8643'
		'COLOR_SUM_ARB		0x8458'
		'PROGRAM_FORMAT_ASCII_ARB		0x8875'
		'VERTEX_ATTRIB_ARRAY_ENABLED_ARB		0x8622'
		'VERTEX_ATTRIB_ARRAY_SIZE_ARB		0x8623'
		'VERTEX_ATTRIB_ARRAY_STRIDE_ARB		0x8624'
		'VERTEX_ATTRIB_ARRAY_TYPE_ARB		0x8625'
		'VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB		0x886A'
		'CURRENT_VERTEX_ATTRIB_ARB		0x8626'
		'VERTEX_ATTRIB_ARRAY_POINTER_ARB		0x8645'
		'PROGRAM_LENGTH_ARB		0x8627'
		'PROGRAM_FORMAT_ARB		0x8876'
		'PROGRAM_BINDING_ARB		0x8677'
		'PROGRAM_INSTRUCTIONS_ARB		0x88A0'
		'MAX_PROGRAM_INSTRUCTIONS_ARB		0x88A1'
		'PROGRAM_NATIVE_INSTRUCTIONS_ARB		0x88A2'
		'MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB		0x88A3'
		'PROGRAM_TEMPORARIES_ARB		0x88A4'
		'MAX_PROGRAM_TEMPORARIES_ARB		0x88A5'
		'PROGRAM_NATIVE_TEMPORARIES_ARB		0x88A6'
		'MAX_PROGRAM_NATIVE_TEMPORARIES_ARB		0x88A7'
		'PROGRAM_PARAMETERS_ARB		0x88A8'
		'MAX_PROGRAM_PARAMETERS_ARB		0x88A9'
		'PROGRAM_NATIVE_PARAMETERS_ARB		0x88AA'
		'MAX_PROGRAM_NATIVE_PARAMETERS_ARB		0x88AB'
		'PROGRAM_ATTRIBS_ARB		0x88AC'
		'MAX_PROGRAM_ATTRIBS_ARB		0x88AD'
		'PROGRAM_NATIVE_ATTRIBS_ARB		0x88AE'
		'MAX_PROGRAM_NATIVE_ATTRIBS_ARB		0x88AF'
		'PROGRAM_ADDRESS_REGISTERS_ARB		0x88B0'
		'MAX_PROGRAM_ADDRESS_REGISTERS_ARB		0x88B1'
		'PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB		0x88B2'
		'MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB		0x88B3'
		'MAX_PROGRAM_LOCAL_PARAMETERS_ARB		0x88B4'
		'MAX_PROGRAM_ENV_PARAMETERS_ARB		0x88B5'
		'PROGRAM_UNDER_NATIVE_LIMITS_ARB		0x88B6'
		'PROGRAM_STRING_ARB		0x8628'
		'PROGRAM_ERROR_POSITION_ARB		0x864B'
		'CURRENT_MATRIX_ARB		0x8641'
		'TRANSPOSE_CURRENT_MATRIX_ARB		0x88B7'
		'CURRENT_MATRIX_STACK_DEPTH_ARB		0x8640'
		'MAX_VERTEX_ATTRIBS_ARB		0x8869'
		'MAX_PROGRAM_MATRICES_ARB		0x862F'
		'MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB		0x862E'
		'PROGRAM_ERROR_STRING_ARB		0x8874'
		'MATRIX0_ARB		0x88C0'
		'MATRIX1_ARB		0x88C1'
		'MATRIX2_ARB		0x88C2'
		'MATRIX3_ARB		0x88C3'
		'MATRIX4_ARB		0x88C4'
		'MATRIX5_ARB		0x88C5'
		'MATRIX6_ARB		0x88C6'
		'MATRIX7_ARB		0x88C7'
		'MATRIX8_ARB		0x88C8'
		'MATRIX9_ARB		0x88C9'
		'MATRIX10_ARB		0x88CA'
		'MATRIX11_ARB		0x88CB'
		'MATRIX12_ARB		0x88CC'
		'MATRIX13_ARB		0x88CD'
		'MATRIX14_ARB		0x88CE'
		'MATRIX15_ARB		0x88CF'
		'MATRIX16_ARB		0x88D0'
		'MATRIX17_ARB		0x88D1'
		'MATRIX18_ARB		0x88D2'
		'MATRIX19_ARB		0x88D3'
		'MATRIX20_ARB		0x88D4'
		'MATRIX21_ARB		0x88D5'
		'MATRIX22_ARB		0x88D6'
		'MATRIX23_ARB		0x88D7'
		'MATRIX24_ARB		0x88D8'
		'MATRIX25_ARB		0x88D9'
		'MATRIX26_ARB		0x88DA'
		'MATRIX27_ARB		0x88DB'
		'MATRIX28_ARB		0x88DC'
		'MATRIX29_ARB		0x88DD'
		'MATRIX30_ARB		0x88DE'
		'MATRIX31_ARB		0x88DF'
	)
]

{ #category : #'GL_ARB_vertex_shader' }
OGLExtManager class >> initializeArbVertexShader [
	"self initializeArbVertexShader"
	"Initialize ARB_vertex_shader constants"

	self install: 'ArbVertexShader' withEXTConstants: #(
		'VERTEX_SHADER_ARB 	0x8B31'
		'MAX_VERTEX_UNIFORM_COMPONENTS_ARB 	0x8B4A'
		'MAX_VARYING_FLOATS_ARB 	0x8B4B'
		'MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB 	0x8B4C'
		'MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB 	0x8B4D'
		'OBJECT_ACTIVE_ATTRIBUTES_ARB 	0x8B89'
		'OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB 	0x8B8A  '
)
]

{ #category : #'GL_EXT_compiled_vertex_array' }
OGLExtManager class >> initializeExtCompiledVertexArray [
	self install: 'ExtCompiledVertexArray' withEXTConstants: #(
		'ARRAY_ELEMENT_LOCK_COUNT_EXT	0x81A9'
		'ARRAY_ELEMENT_LOCK_FIRST_EXT	0x81A8'
	).

]

{ #category : #'GL_EXT_framebuffer_blit' }
OGLExtManager class >> initializeExtFramebufferBlit [
	"self initializeExtFramebufferBlit"
	"Initialize EXT_framebuffer_blit constants"

	self install: 'ExtFramebufferBlit' withEXTConstants: #(
		'READ_FRAMEBUFFER_EXT           0x8CA8'
		'DRAW_FRAMEBUFFER_EXT           0x8CA9'
		'READ_FRAMEBUFFER_BINDING_EXT   0x8CA6'
		'DRAW_FRAMEBUFFER_BINDING_EXT   0x8CAA'
	)

]

{ #category : #'GL_EXT_framebuffer_object' }
OGLExtManager class >> initializeExtFramebufferObjects [
	"self initializeExtFramebufferObjects"
	"Initialize EXT_framebuffer_objects constants"

	self install: 'ExtFramebufferObjects' withEXTConstants: #(
		'INVALID_FRAMEBUFFER_OPERATION_EXT 0x0506'
		'MAX_RENDERBUFFER_SIZE_EXT      0x84E8'
		'FRAMEBUFFER_BINDING_EXT        0x8CA6'
		'RENDERBUFFER_BINDING_EXT       0x8CA7'
		'FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT 0x8CD0'
		'FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT 0x8CD1'
		'FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT 0x8CD2'
		'FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT 0x8CD3'
		'FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT 0x8CD4'
		'FRAMEBUFFER_COMPLETE_EXT       0x8CD5'
		'FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT 0x8CD6'
		'FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT 0x8CD7'
		'FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT 0x8CD9'
		'FRAMEBUFFER_INCOMPLETE_FORMATS_EXT 0x8CDA'
		'FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT 0x8CDB'
		'FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT 0x8CDC'
		'FRAMEBUFFER_UNSUPPORTED_EXT    0x8CDD'
		'MAX_COLOR_ATTACHMENTS_EXT      0x8CDF'
		'COLOR_ATTACHMENT0_EXT          0x8CE0'
		'COLOR_ATTACHMENT1_EXT          0x8CE1'
		'COLOR_ATTACHMENT2_EXT          0x8CE2'
		'COLOR_ATTACHMENT3_EXT          0x8CE3'
		'COLOR_ATTACHMENT4_EXT          0x8CE4'
		'COLOR_ATTACHMENT5_EXT          0x8CE5'
		'COLOR_ATTACHMENT6_EXT          0x8CE6'
		'COLOR_ATTACHMENT7_EXT          0x8CE7'
		'COLOR_ATTACHMENT8_EXT          0x8CE8'
		'COLOR_ATTACHMENT9_EXT          0x8CE9'
		'COLOR_ATTACHMENT10_EXT         0x8CEA'
		'COLOR_ATTACHMENT11_EXT         0x8CEB'
		'COLOR_ATTACHMENT12_EXT         0x8CEC'
		'COLOR_ATTACHMENT13_EXT         0x8CED'
		'COLOR_ATTACHMENT14_EXT         0x8CEE'
		'COLOR_ATTACHMENT15_EXT         0x8CEF'
		'DEPTH_ATTACHMENT_EXT           0x8D00'
		'STENCIL_ATTACHMENT_EXT         0x8D20'
		'FRAMEBUFFER_EXT                0x8D40'
		'RENDERBUFFER_EXT               0x8D41'
		'RENDERBUFFER_WIDTH_EXT         0x8D42'
		'RENDERBUFFER_HEIGHT_EXT        0x8D43'
		'RENDERBUFFER_INTERNAL_FORMAT_EXT 0x8D44'
		'STENCIL_INDEX1_EXT             0x8D46'
		'STENCIL_INDEX4_EXT             0x8D47'
		'STENCIL_INDEX8_EXT             0x8D48'
		'STENCIL_INDEX16_EXT            0x8D49'
		'RENDERBUFFER_RED_SIZE_EXT      0x8D50'
		'RENDERBUFFER_GREEN_SIZE_EXT    0x8D51'
		'RENDERBUFFER_BLUE_SIZE_EXT     0x8D52'
		'RENDERBUFFER_ALPHA_SIZE_EXT    0x8D53'
		'RENDERBUFFER_DEPTH_SIZE_EXT    0x8D54'
		'RENDERBUFFER_STENCIL_SIZE_EXT  0x8D55'
	)

]

{ #category : #'GL_EXT_texture_compression_s3tc' }
OGLExtManager class >> initializeExtTextureCompressionS3tc [
	"OGLExtManager initialize"
	"Initialize EXT_texture_compression_s3tc constants"
	self install: 'ExtTextureCompressionS3tc' withEXTConstants: #(
		'COMPRESSED_RGB_S3TC_DXT1_EXT                   0x83F0'
		'COMPRESSED_RGBA_S3TC_DXT1_EXT                  0x83F1'
		'COMPRESSED_RGBA_S3TC_DXT3_EXT                  0x83F2'
		'COMPRESSED_RGBA_S3TC_DXT5_EXT                  0x83F3'
	)

]

{ #category : #'GL_SGIS_generate_mipmap' }
OGLExtManager class >> initializeSgisGenerateMipmap [
	"GLExtensions initialize"
	"Initialize SGIS_GENERATE_MIPMAP constants"
	self install: 'SgisGenerateMipmap' withEXTConstants: #(
		'GENERATE_MIPMAP_SGIS		0x8191'
		'GENERATE_MIPMAP_HINT_SGIS	0x8192'
	)

]

{ #category : #'class initialization' }
OGLExtManager class >> install: extension withEXTConstants: list [
	"Take a list of strings comprising open gl constants, and install them into GLEXTConstants.
	See also parseSpecConstants:."
	| code selector |
	selector := ('initialize', extension) asSymbol.
	code := String new writeStream.
	code nextPutAll: selector.
	code crtab; nextPutAll: '"This method was automatically generated by OGLExtManager"'.
	(self parseEXTConstants: list) do:[:binding|
		(GLExtConstants bindingOf: binding key) ifNil:[
			GLExtConstants addClassVarName: binding key.
		].
		code crtab; nextPutAll: binding key; nextPutAll: ' := '.
		code print: binding value; nextPutAll: '.'.
	].
	code := code contents.
	(GLExtConstants class sourceCodeAt: selector ifAbsent:['']) = code ifTrue:[^self]. "no change"
	GLExtConstants class compile: code classified: 'pool initialization'.
]

{ #category : #'function helpers' }
OGLExtManager class >> mapType: aString using: aDictionary [
	| base |
	base := aString copyWithout: $*.
	^String streamContents: [:s |
		s nextPutAll: (aDictionary at: base ifAbsent: [self error: 'type not mapped: ', base]).
		s next: (aString occurrencesOf: $*) put: $*]

]

{ #category : #'instance creation' }
OGLExtManager class >> new [
	"To use OGLExtManager we must always create a new anonymous subclass"
	| baseClass newClass |
	self == OGLExtManager ifFalse:[self error: 'OGLExtManager: Cannot create instances of subclasses'].
	baseClass := OGLExtManager. "hardcoded for a reason"
	"Create a new anonymous subclass"
	newClass := ClassBuilder new
		newSubclassOf: baseClass
		type: baseClass typeOfClass
		instanceVariables: ''
		from: nil.
	baseClass removeSubclass: newClass.
	baseClass addObsoleteSubclass: newClass.
	newClass setName: '*', baseClass name.
	^newClass basicNew

]

{ #category : #'class initialization' }
OGLExtManager class >> parseEXTConstants: list [
	"Take a list of strings comprising open gl constants, and answer them converted into suitable constant bindings. The elements of the list are expected to follow the semi-standardized rules found in most of the extensions documents, e.g., something like:
		MAX_PALETTE_MATRICES_ARB	0x8842
			=> GLMaxPaletteMatricesARB
		GENERATE_MIPMAP_SGIS			0x8191
			=> GLGenerateMipMapSGIS
		ELEMENT_ARRAY_APPLE			0x8768
			=> GLElementArrayAPPLE
		PIXEL_COUNT_NV					0x8866
			=> GLPixelCountNV
	"
	| parts constName constValue |
	^list collect:[:string|
		parts := string withBlanksTrimmed findTokens:
			(String with: Character space with: Character tab).
		constName := parts first.
		constValue := parts last.
		(constValue beginsWith: '0x') ifTrue:[
			constValue := constValue copyFrom: 3 to: constValue size.
			constValue := Integer readFrom: (ReadStream on: constValue) base: 16.
		] ifFalse:[
			constValue := Number readFrom: (ReadStream on: constValue).
		].
		parts := constName findTokens: '_'.
		constName := String streamContents:[:s|
			s nextPutAll: 'GL'.
			parts allButLast do:[:str| 
				s nextPut: str first asUppercase.
				s nextPutAll: str allButFirst asLowercase.
			].
			s nextPutAll: parts last.
		].
		constName asSymbol -> constValue
	].

]

{ #category : #'function helpers' }
OGLExtManager class >> parseEXTFunctions: list do: aBlock [
	"Take a list of strings comprising open gl functions, and answer them converted into array."
	| s return function args i type param |
	list do: [:string|
		s := string readStream.
		return := (s upTo: Character space) withBlanksTrimmed.
		function := 'gl', (s upTo: $() withBlanksTrimmed.
		args := ((s upTo: $)) findTokens: $,) collect: [:arg | 
			i := arg findLast: [:c | (c isAlphaNumeric or: [c = $_]) not].
			type := arg copyFrom: 1 to: i.
			type := type copyReplaceAll: 'const' with: ''.
			type := type copyReplaceAll: ' *' with: '*'.
			param := arg copyFrom: i+1 to: arg size.
			Array with: type withBlanksTrimmed with: param withBlanksTrimmed].
		aBlock value: return value: function value: args.
	].

]

{ #category : #'dynamic lookup' }
OGLExtManager >> doesNotUnderstand: aMessage [
	"WARNING: DON'T TRY THIS AT HOME!
	If you grok this method you are seriously ready for meta-programming.
	If you don't you shouldn't worry either - it's not your fault ;-)"
	| method ffiCall extension |

	"see if that method is really there"
	method := OGLExtManager class "(!)" compiledMethodAt: aMessage selector ifAbsent:[nil].
	method ifNil:[^super doesNotUnderstand: aMessage].

	"see if it's an FFI call"
	(method numLiterals > 0 and:[(method literalAt: 1) isKindOf: ExternalFunction])
		ifFalse:[^super doesNotUnderstand: aMessage].

	"grab the ffi call from the method"
	ffiCall := method literalAt: 1.
	"see if it describes some extension (module needs to be empty)"
	ffiCall module isNil ifFalse:[^super doesNotUnderstand: aMessage].

	"look up the extension"
	extension := OGLExtManager class organization categoryOfElement: aMessage selector.

	"load the extension"
	self loadExtension: extension.

	"and reinvoke method"
	(self respondsTo: aMessage selector) ifTrue:[
		^self perform: aMessage selector withArguments: aMessage arguments
	].
	^super doesNotUnderstand: aMessage
]

{ #category : #'dynamic lookup' }
OGLExtManager >> loadExtension: extName [
	"Load and install the extension with the given name"

	| selectors callType method ffiCall ffiAddr methodCopy |
	ogl ifNil:[^self error: 'OGLExtManager must be bound to a specific context'].

	"see if the extension is present"
	(ogl extensions includes: extName) ifFalse:[^self error: extName, ' is not present'].

	"verify that we're an anonymous subclass of OGLExtManager"
	(self class superclass ~~ OGLExtManager or:[
		OGLExtManager subclasses includes: self class]) 
			ifTrue:[^self error: 'Must be anonymous'].

	"pick up the selectors"
	selectors := OGLExtManager class "!" organization listAtCategoryNamed: extName.

	"get the calling convention"
	callType := ogl platform glExtCallingConvention.

	"install the methods"
	selectors do:[:sel|
		method := OGLExtManager class compiledMethodAt: sel ifAbsent:[nil].
		(method notNil 
			and:[method numLiterals > 0 
				and:[(ffiCall := method literalAt: 1) isKindOf: ExternalLibraryFunction]]) 
					ifTrue:[

			"clone the method"
			methodCopy := method clone.

			"set up a new ffi function"
			ffiCall := ExternalLibraryFunction new 
				name: ffiCall name 
				module: (ogl platform glExtModule ifNil: [ffiCall module]) "see glExtModule"
				flags: callType 
				argTypes: ffiCall argTypes.

			"Lookup address through OpenGL, unless we use a regular FFI lookup."
			ogl glExtModule ifNil: [
				"get the address of the extension function"
				ffiAddr := ogl platform glExtGetProcAddress: ffiCall name asString.
				(ffiAddr == nil or:[ffiAddr = 0]) ifTrue:[
					self error: 'Failed to find ', ffiCall name.
				] ifFalse:[
					ffiAddr := ExternalAddress new fromInteger: ffiAddr.
				].
				ffiCall setHandle: ffiAddr].

			"install the new ffi call"
			methodCopy literalAt: 1 put: ffiCall.

			"add the copy to our method dictionary"
			self class addSelectorSilently: sel withMethod: methodCopy.
		].
	].

]

{ #category : #accessing }
OGLExtManager >> ogl [
	^ogl
]

{ #category : #accessing }
OGLExtManager >> ogl: aOGL [
	ogl := aOGL.
]
