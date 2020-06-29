Class {
	#name : #'GLES23_0',
	#superclass : #'GLES22_0',
	#category : 'MPOpenGL-Versions'
}

{ #category : #commands }
GLES23_0 >> glBeginQuery: target with: id [

	<apicall: void 'glBeginQuery' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBeginTransformFeedback: primitiveMode [

	<apicall: void 'glBeginTransformFeedback' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBindBufferBase: target with: index with: buffer [

	<apicall: void 'glBindBufferBase' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBindBufferRange: target with: index with: buffer with: offset with: size [

	<apicall: void 'glBindBufferRange' (GLenum GLuint GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBindSampler: unit with: sampler [

	<apicall: void 'glBindSampler' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBindTransformFeedback: target with: id [

	<apicall: void 'glBindTransformFeedback' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBindVertexArray: array [

	<apicall: void 'glBindVertexArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glBlitFramebuffer: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [

	<apicall: void 'glBlitFramebuffer' (GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glClearBufferfi: buffer with: drawbuffer with: depth with: stencil [

	<apicall: void 'glClearBufferfi' (GLenum GLint GLfloat GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glClearBufferfv: buffer with: drawbuffer with: value [

	<apicall: void 'glClearBufferfv' (GLenum GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glClearBufferiv: buffer with: drawbuffer with: value [

	<apicall: void 'glClearBufferiv' (GLenum GLint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glClearBufferuiv: buffer with: drawbuffer with: value [

	<apicall: void 'glClearBufferuiv' (GLenum GLint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glClientWaitSync: sync with: flags with: timeout [

	<apicall: GLenum 'glClientWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glCompressedTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [

	<apicall: void 'glCompressedTexImage3D' (GLenum GLint GLenum GLsizei GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glCompressedTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<apicall: void 'glCompressedTexSubImage3D' (GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glCopyBufferSubData: readTarget with: writeTarget with: readOffset with: writeOffset with: size [

	<apicall: void 'glCopyBufferSubData' (GLenum GLenum GLintptr GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glCopyTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<apicall: void 'glCopyTexSubImage3D' (GLenum GLint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDeleteQueries: n with: ids [

	<apicall: void 'glDeleteQueries' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDeleteSamplers: count with: samplers [

	<apicall: void 'glDeleteSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDeleteSync: sync [

	<apicall: void 'glDeleteSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDeleteTransformFeedbacks: n with: ids [

	<apicall: void 'glDeleteTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDeleteVertexArrays: n with: arrays [

	<apicall: void 'glDeleteVertexArrays' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDrawArraysInstanced: mode with: first with: count with: instancecount [

	<apicall: void 'glDrawArraysInstanced' (GLenum GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDrawBuffers: n with: bufs [

	<apicall: void 'glDrawBuffers' (GLsizei GLenum*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDrawElementsInstanced: mode with: count with: type with: indices with: instancecount [

	<apicall: void 'glDrawElementsInstanced' (GLenum GLsizei GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glDrawRangeElements: mode with: start with: end with: count with: type with: indices [

	<apicall: void 'glDrawRangeElements' (GLenum GLuint GLuint GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glEndQuery: target [

	<apicall: void 'glEndQuery' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glEndTransformFeedback [

	<apicall: void 'glEndTransformFeedback' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glFenceSync: condition with: flags [

	<apicall: GLsync 'glFenceSync' (GLenum GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glFlushMappedBufferRange: target with: offset with: length [

	<apicall: void 'glFlushMappedBufferRange' (GLenum GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glFramebufferTextureLayer: target with: attachment with: texture with: level with: layer [

	<apicall: void 'glFramebufferTextureLayer' (GLenum GLenum GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGenQueries: n with: ids [

	<apicall: void 'glGenQueries' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGenSamplers: count with: samplers [

	<apicall: void 'glGenSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGenTransformFeedbacks: n with: ids [

	<apicall: void 'glGenTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGenVertexArrays: n with: arrays [

	<apicall: void 'glGenVertexArrays' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetActiveUniformBlockName: program with: uniformBlockIndex with: bufSize with: length with: uniformBlockName [

	<apicall: void 'glGetActiveUniformBlockName' (GLuint GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetActiveUniformBlockiv: program with: uniformBlockIndex with: pname with: params [

	<apicall: void 'glGetActiveUniformBlockiv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetActiveUniformsiv: program with: uniformCount with: uniformIndices with: pname with: params [

	<apicall: void 'glGetActiveUniformsiv' (GLuint GLsizei GLuint* GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetBufferParameteri64v: target with: pname with: params [

	<apicall: void 'glGetBufferParameteri64v' (GLenum GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetBufferPointerv: target with: pname with: params [

	<apicall: void 'glGetBufferPointerv' (GLenum GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetFragDataLocation: program with: name [

	<apicall: GLint 'glGetFragDataLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetInteger64i_v: target with: index with: data [

	<apicall: void 'glGetInteger64i_v' (GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetInteger64v: pname with: data [

	<apicall: void 'glGetInteger64v' (GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetIntegeri_v: target with: index with: data [

	<apicall: void 'glGetIntegeri_v' (GLenum GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetInternalformativ: target with: internalformat with: pname with: count with: params [

	<apicall: void 'glGetInternalformativ' (GLenum GLenum GLenum GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetProgramBinary: program with: bufSize with: length with: binaryFormat with: binary [

	<apicall: void 'glGetProgramBinary' (GLuint GLsizei GLsizei* GLenum* void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetQueryObjectuiv: id with: pname with: params [

	<apicall: void 'glGetQueryObjectuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetQueryiv: target with: pname with: params [

	<apicall: void 'glGetQueryiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetSamplerParameterfv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetSamplerParameteriv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetStringi: name with: index [

	<apicall: GLubyte* 'glGetStringi' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetSynciv: sync with: pname with: count with: length with: values [

	<apicall: void 'glGetSynciv' (GLsync GLenum GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetTransformFeedbackVarying: program with: index with: bufSize with: length with: size with: type with: name [

	<apicall: void 'glGetTransformFeedbackVarying' (GLuint GLuint GLsizei GLsizei* GLsizei* GLenum* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetUniformBlockIndex: program with: uniformBlockName [

	<apicall: GLuint 'glGetUniformBlockIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetUniformIndices: program with: uniformCount with: uniformNames with: uniformIndices [

	<apicall: void 'glGetUniformIndices' (GLuint GLsizei GLchar** GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetUniformuiv: program with: location with: params [

	<apicall: void 'glGetUniformuiv' (GLuint GLint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetVertexAttribIiv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glGetVertexAttribIuiv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glInvalidateFramebuffer: target with: numAttachments with: attachments [

	<apicall: void 'glInvalidateFramebuffer' (GLenum GLsizei GLenum*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glInvalidateSubFramebuffer: target with: numAttachments with: attachments with: x with: y with: width with: height [

	<apicall: void 'glInvalidateSubFramebuffer' (GLenum GLsizei GLenum* GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glIsQuery: id [

	<apicall: GLboolean 'glIsQuery' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glIsSampler: sampler [

	<apicall: GLboolean 'glIsSampler' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glIsSync: sync [

	<apicall: GLboolean 'glIsSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glIsTransformFeedback: id [

	<apicall: GLboolean 'glIsTransformFeedback' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glIsVertexArray: array [

	<apicall: GLboolean 'glIsVertexArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glMapBufferRange: target with: offset with: length with: access [

	<apicall: void* 'glMapBufferRange' (GLenum GLintptr GLsizeiptr GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glPauseTransformFeedback [

	<apicall: void 'glPauseTransformFeedback' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glProgramBinary: program with: binaryFormat with: binary with: length [

	<apicall: void 'glProgramBinary' (GLuint GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glProgramParameteri: program with: pname with: value [

	<apicall: void 'glProgramParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glReadBuffer: src [

	<apicall: void 'glReadBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glRenderbufferStorageMultisample: target with: samples with: internalformat with: width with: height [

	<apicall: void 'glRenderbufferStorageMultisample' (GLenum GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glResumeTransformFeedback [

	<apicall: void 'glResumeTransformFeedback' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glSamplerParameterf: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glSamplerParameterfv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glSamplerParameteri: sampler with: pname with: param [

	<apicall: void 'glSamplerParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glSamplerParameteriv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: format with: type with: pixels [

	<apicall: void 'glTexImage3D' (GLenum GLint GLint GLsizei GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glTexStorage2D: target with: levels with: internalformat with: width with: height [

	<apicall: void 'glTexStorage2D' (GLenum GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glTexStorage3D: target with: levels with: internalformat with: width with: height with: depth [

	<apicall: void 'glTexStorage3D' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<apicall: void 'glTexSubImage3D' (GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glTransformFeedbackVaryings: program with: count with: varyings with: bufferMode [

	<apicall: void 'glTransformFeedbackVaryings' (GLuint GLsizei GLchar** GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform1ui: location with: v0 [

	<apicall: void 'glUniform1ui' (GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform1uiv: location with: count with: value [

	<apicall: void 'glUniform1uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform2ui: location with: v0 with: v1 [

	<apicall: void 'glUniform2ui' (GLint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform2uiv: location with: count with: value [

	<apicall: void 'glUniform2uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform3ui: location with: v0 with: v1 with: v2 [

	<apicall: void 'glUniform3ui' (GLint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform3uiv: location with: count with: value [

	<apicall: void 'glUniform3uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform4ui: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glUniform4ui' (GLint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniform4uiv: location with: count with: value [

	<apicall: void 'glUniform4uiv' (GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformBlockBinding: program with: uniformBlockIndex with: uniformBlockBinding [

	<apicall: void 'glUniformBlockBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformMatrix2x3fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2x3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformMatrix2x4fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2x4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformMatrix3x2fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3x2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformMatrix3x4fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3x4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformMatrix4x2fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4x2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUniformMatrix4x3fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4x3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glUnmapBuffer: target [

	<apicall: GLboolean 'glUnmapBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glVertexAttribDivisor: index with: divisor [

	<apicall: void 'glVertexAttribDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glVertexAttribI4i: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttribI4i' (GLuint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glVertexAttribI4iv: index with: v [

	<apicall: void 'glVertexAttribI4iv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glVertexAttribI4ui: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttribI4ui' (GLuint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glVertexAttribI4uiv: index with: v [

	<apicall: void 'glVertexAttribI4uiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glVertexAttribIPointer: index with: size with: type with: stride with: pointer [

	<apicall: void 'glVertexAttribIPointer' (GLuint GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_0 >> glWaitSync: sync with: flags with: timeout [

	<apicall: void 'glWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #version }
GLES23_0 >> majorVersion [

	^ 3
]

{ #category : #version }
GLES23_0 >> minorVersion [

	^ 0
]
