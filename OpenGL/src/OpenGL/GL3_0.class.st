Class {
	#name : #'GL3_0',
	#superclass : #'GL2_1',
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GL3_0 class >> majorVersion [

	^ 3
]

{ #category : #version }
GL3_0 class >> minorVersion [

	^ 0
]

{ #category : #commands }
GL3_0 >> glBeginConditionalRender: id with: mode [

	<apicall: void 'glBeginConditionalRender' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBeginTransformFeedback: primitiveMode [

	<apicall: void 'glBeginTransformFeedback' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBindBufferBase: target with: index with: buffer [

	<apicall: void 'glBindBufferBase' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBindBufferRange: target with: index with: buffer with: offset with: size [

	<apicall: void 'glBindBufferRange' (GLenum GLuint GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBindFragDataLocation: program with: color with: name [

	<apicall: void 'glBindFragDataLocation' (GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBindFramebuffer: target with: framebuffer [

	<apicall: void 'glBindFramebuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBindRenderbuffer: target with: renderbuffer [

	<apicall: void 'glBindRenderbuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBindVertexArray: array [

	<apicall: void 'glBindVertexArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glBlitFramebuffer: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [

	<apicall: void 'glBlitFramebuffer' (GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glCheckFramebufferStatus: target [

	<apicall: GLenum 'glCheckFramebufferStatus' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glClampColor: target with: clamp [

	<apicall: void 'glClampColor' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glClearBufferfi: buffer with: drawbuffer with: depth with: stencil [

	<apicall: void 'glClearBufferfi' (GLenum GLint GLfloat GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glClearBufferfv: buffer with: drawbuffer with: value [

	<apicall: void 'glClearBufferfv' (GLenum GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glClearBufferiv: buffer with: drawbuffer with: value [

	<apicall: void 'glClearBufferiv' (GLenum GLint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glClearBufferuiv: buffer with: drawbuffer with: value [

	<apicall: void 'glClearBufferuiv' (GLenum GLint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glColorMaski: index with: r with: g with: b with: a [

	<apicall: void 'glColorMaski' (GLuint GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glDeleteFramebuffers: n with: framebuffers [

	<apicall: void 'glDeleteFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glDeleteRenderbuffers: n with: renderbuffers [

	<apicall: void 'glDeleteRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glDeleteVertexArrays: n with: arrays [

	<apicall: void 'glDeleteVertexArrays' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glDisablei: target with: index [

	<apicall: void 'glDisablei' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glEnablei: target with: index [

	<apicall: void 'glEnablei' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glEndConditionalRender [

	<apicall: void 'glEndConditionalRender' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glEndTransformFeedback [

	<apicall: void 'glEndTransformFeedback' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glFlushMappedBufferRange: target with: offset with: length [

	<apicall: void 'glFlushMappedBufferRange' (GLenum GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glFramebufferRenderbuffer: target with: attachment with: renderbuffertarget with: renderbuffer [

	<apicall: void 'glFramebufferRenderbuffer' (GLenum GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glFramebufferTexture1D: target with: attachment with: textarget with: texture with: level [

	<apicall: void 'glFramebufferTexture1D' (GLenum GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glFramebufferTexture2D: target with: attachment with: textarget with: texture with: level [

	<apicall: void 'glFramebufferTexture2D' (GLenum GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glFramebufferTexture3D: target with: attachment with: textarget with: texture with: level with: zoffset [

	<apicall: void 'glFramebufferTexture3D' (GLenum GLenum GLenum GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glFramebufferTextureLayer: target with: attachment with: texture with: level with: layer [

	<apicall: void 'glFramebufferTextureLayer' (GLenum GLenum GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGenFramebuffers: n with: framebuffers [

	<apicall: void 'glGenFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGenRenderbuffers: n with: renderbuffers [

	<apicall: void 'glGenRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGenVertexArrays: n with: arrays [

	<apicall: void 'glGenVertexArrays' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGenerateMipmap: target [

	<apicall: void 'glGenerateMipmap' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetBooleani_v: target with: index with: data [

	<apicall: void 'glGetBooleani_v' (GLenum GLuint GLboolean*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetFragDataLocation: program with: name [

	<apicall: GLint 'glGetFragDataLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetFramebufferAttachmentParameteriv: target with: attachment with: pname with: params [

	<apicall: void 'glGetFramebufferAttachmentParameteriv' (GLenum GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetIntegeri_v: target with: index with: data [

	<apicall: void 'glGetIntegeri_v' (GLenum GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetRenderbufferParameteriv: target with: pname with: params [

	<apicall: void 'glGetRenderbufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetStringi: name with: index [

	<apicall: GLubyte* 'glGetStringi' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetTexParameterIiv: target with: pname with: params [

	<apicall: void 'glGetTexParameterIiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetTexParameterIuiv: target with: pname with: params [

	<apicall: void 'glGetTexParameterIuiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetTransformFeedbackVarying: program with: index with: bufSize with: length with: size with: type with: name [

	<apicall: void 'glGetTransformFeedbackVarying' (GLuint GLuint GLsizei GLsizei* GLsizei* GLenum* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetUniformuiv: program with: location with: params [

	<apicall: void 'glGetUniformuiv' (GLuint GLint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetVertexAttribIiv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glGetVertexAttribIuiv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glIsEnabledi: target with: index [

	<apicall: GLboolean 'glIsEnabledi' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glIsFramebuffer: framebuffer [

	<apicall: GLboolean 'glIsFramebuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glIsRenderbuffer: renderbuffer [

	<apicall: GLboolean 'glIsRenderbuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glIsVertexArray: array [

	<apicall: GLboolean 'glIsVertexArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glMapBufferRange: target with: offset with: length with: access [

	<apicall: void* 'glMapBufferRange' (GLenum GLintptr GLsizeiptr GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glRenderbufferStorage: target with: internalformat with: width with: height [

	<apicall: void 'glRenderbufferStorage' (GLenum GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glRenderbufferStorageMultisample: target with: samples with: internalformat with: width with: height [

	<apicall: void 'glRenderbufferStorageMultisample' (GLenum GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glTexParameterIiv: target with: pname with: params [

	<apicall: void 'glTexParameterIiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glTexParameterIuiv: target with: pname with: params [

	<apicall: void 'glTexParameterIuiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glTransformFeedbackVaryings: program with: count with: varyings with: bufferMode [

	<apicall: void 'glTransformFeedbackVaryings' (GLuint GLsizei GLchar** GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform1ui: location with: v0 [

	<apicall: void 'glUniform1ui' (GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform1uiv: location with: count with: value [

	<apicall: void 'glUniform1uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform2ui: location with: v0 with: v1 [

	<apicall: void 'glUniform2ui' (GLint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform2uiv: location with: count with: value [

	<apicall: void 'glUniform2uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform3ui: location with: v0 with: v1 with: v2 [

	<apicall: void 'glUniform3ui' (GLint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform3uiv: location with: count with: value [

	<apicall: void 'glUniform3uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform4ui: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glUniform4ui' (GLint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glUniform4uiv: location with: count with: value [

	<apicall: void 'glUniform4uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI1i: index with: x [

	<apicall: void 'glVertexAttribI1i' (GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI1iv: index with: v [

	<apicall: void 'glVertexAttribI1iv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI1ui: index with: x [

	<apicall: void 'glVertexAttribI1ui' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI1uiv: index with: v [

	<apicall: void 'glVertexAttribI1uiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI2i: index with: x with: y [

	<apicall: void 'glVertexAttribI2i' (GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI2iv: index with: v [

	<apicall: void 'glVertexAttribI2iv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI2ui: index with: x with: y [

	<apicall: void 'glVertexAttribI2ui' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI2uiv: index with: v [

	<apicall: void 'glVertexAttribI2uiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI3i: index with: x with: y with: z [

	<apicall: void 'glVertexAttribI3i' (GLuint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI3iv: index with: v [

	<apicall: void 'glVertexAttribI3iv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI3ui: index with: x with: y with: z [

	<apicall: void 'glVertexAttribI3ui' (GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI3uiv: index with: v [

	<apicall: void 'glVertexAttribI3uiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4bv: index with: v [

	<apicall: void 'glVertexAttribI4bv' (GLuint GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4i: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttribI4i' (GLuint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4iv: index with: v [

	<apicall: void 'glVertexAttribI4iv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4sv: index with: v [

	<apicall: void 'glVertexAttribI4sv' (GLuint GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4ubv: index with: v [

	<apicall: void 'glVertexAttribI4ubv' (GLuint GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4ui: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttribI4ui' (GLuint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4uiv: index with: v [

	<apicall: void 'glVertexAttribI4uiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribI4usv: index with: v [

	<apicall: void 'glVertexAttribI4usv' (GLuint GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_0 >> glVertexAttribIPointer: index with: size with: type with: stride with: pointer [

	<apicall: void 'glVertexAttribIPointer' (GLuint GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]
