Class {
	#name : #'GL4_3',
	#superclass : #'GL4_2',
	#category : 'MPOpenGL-Versions'
}

{ #category : #commands }
GL4_3 >> glBindVertexBuffer: bindingindex with: buffer with: offset with: stride [

	<apicall: void 'glBindVertexBuffer' (GLuint GLuint GLintptr GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glClearBufferData: target with: internalformat with: format with: type with: data [

	<apicall: void 'glClearBufferData' (GLenum GLenum GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glClearBufferSubData: target with: internalformat with: offset with: size with: format with: type with: data [

	<apicall: void 'glClearBufferSubData' (GLenum GLenum GLintptr GLsizeiptr GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glCopyImageSubData: srcName with: srcTarget with: srcLevel with: srcX with: srcY with: srcZ with: dstName with: dstTarget with: dstLevel with: dstX with: dstY with: dstZ with: srcWidth with: srcHeight with: srcDepth [

	<apicall: void 'glCopyImageSubData' (GLuint GLenum GLint GLint GLint GLint GLuint GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glDebugMessageCallback: callback with: userParam [

	<apicall: void 'glDebugMessageCallback' (GLDEBUGPROC void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glDebugMessageControl: source with: type with: severity with: count with: ids with: enabled [

	<apicall: void 'glDebugMessageControl' (GLenum GLenum GLenum GLsizei GLuint* GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glDebugMessageInsert: source with: type with: id with: severity with: length with: buf [

	<apicall: void 'glDebugMessageInsert' (GLenum GLenum GLuint GLenum GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glDispatchCompute: num_groups_x with: num_groups_y with: num_groups_z [

	<apicall: void 'glDispatchCompute' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glDispatchComputeIndirect: indirect [

	<apicall: void 'glDispatchComputeIndirect' (GLintptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glFramebufferParameteri: target with: pname with: param [

	<apicall: void 'glFramebufferParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog [

	<apicall: GLuint 'glGetDebugMessageLog' (GLuint GLsizei GLenum* GLenum* GLuint* GLenum* GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetFramebufferParameteriv: target with: pname with: params [

	<apicall: void 'glGetFramebufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetInternalformati64v: target with: internalformat with: pname with: count with: params [

	<apicall: void 'glGetInternalformati64v' (GLenum GLenum GLenum GLsizei GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetObjectLabel: identifier with: name with: bufSize with: length with: label [

	<apicall: void 'glGetObjectLabel' (GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetObjectPtrLabel: ptr with: bufSize with: length with: label [

	<apicall: void 'glGetObjectPtrLabel' (void* GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetPointerv: pname with: params [

	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetProgramInterfaceiv: program with: programInterface with: pname with: params [

	<apicall: void 'glGetProgramInterfaceiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetProgramResourceIndex: program with: programInterface with: name [

	<apicall: GLuint 'glGetProgramResourceIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetProgramResourceLocation: program with: programInterface with: name [

	<apicall: GLint 'glGetProgramResourceLocation' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetProgramResourceLocationIndex: program with: programInterface with: name [

	<apicall: GLint 'glGetProgramResourceLocationIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetProgramResourceName: program with: programInterface with: index with: bufSize with: length with: name [

	<apicall: void 'glGetProgramResourceName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glGetProgramResourceiv: program with: programInterface with: index with: propCount with: props with: count with: length with: params [

	<apicall: void 'glGetProgramResourceiv' (GLuint GLenum GLuint GLsizei GLenum* GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glInvalidateBufferData: buffer [

	<apicall: void 'glInvalidateBufferData' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glInvalidateBufferSubData: buffer with: offset with: length [

	<apicall: void 'glInvalidateBufferSubData' (GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glInvalidateFramebuffer: target with: numAttachments with: attachments [

	<apicall: void 'glInvalidateFramebuffer' (GLenum GLsizei GLenum*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glInvalidateSubFramebuffer: target with: numAttachments with: attachments with: x with: y with: width with: height [

	<apicall: void 'glInvalidateSubFramebuffer' (GLenum GLsizei GLenum* GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glInvalidateTexImage: texture with: level [

	<apicall: void 'glInvalidateTexImage' (GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glInvalidateTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth [

	<apicall: void 'glInvalidateTexSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glMultiDrawArraysIndirect: mode with: indirect with: drawcount with: stride [

	<apicall: void 'glMultiDrawArraysIndirect' (GLenum void* GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glMultiDrawElementsIndirect: mode with: type with: indirect with: drawcount with: stride [

	<apicall: void 'glMultiDrawElementsIndirect' (GLenum GLenum void* GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glObjectLabel: identifier with: name with: length with: label [

	<apicall: void 'glObjectLabel' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glObjectPtrLabel: ptr with: length with: label [

	<apicall: void 'glObjectPtrLabel' (void* GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glPopDebugGroup [

	<apicall: void 'glPopDebugGroup' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glPushDebugGroup: source with: id with: length with: message [

	<apicall: void 'glPushDebugGroup' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glShaderStorageBlockBinding: program with: storageBlockIndex with: storageBlockBinding [

	<apicall: void 'glShaderStorageBlockBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glTexBufferRange: target with: internalformat with: buffer with: offset with: size [

	<apicall: void 'glTexBufferRange' (GLenum GLenum GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glTexStorage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<apicall: void 'glTexStorage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glTexStorage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<apicall: void 'glTexStorage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glTextureView: texture with: target with: origtexture with: internalformat with: minlevel with: numlevels with: minlayer with: numlayers [

	<apicall: void 'glTextureView' (GLuint GLenum GLuint GLenum GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glVertexAttribBinding: attribindex with: bindingindex [

	<apicall: void 'glVertexAttribBinding' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glVertexAttribFormat: attribindex with: size with: type with: normalized with: relativeoffset [

	<apicall: void 'glVertexAttribFormat' (GLuint GLint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glVertexAttribIFormat: attribindex with: size with: type with: relativeoffset [

	<apicall: void 'glVertexAttribIFormat' (GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glVertexAttribLFormat: attribindex with: size with: type with: relativeoffset [

	<apicall: void 'glVertexAttribLFormat' (GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_3 >> glVertexBindingDivisor: bindingindex with: divisor [

	<apicall: void 'glVertexBindingDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #version }
GL4_3 >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_3 >> minorVersion [

	^ 3
]
