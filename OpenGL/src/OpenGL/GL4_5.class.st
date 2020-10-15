Class {
	#name : #'GL4_5',
	#superclass : #'GL4_4',
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GL4_5 class >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_5 class >> minorVersion [

	^ 5
]

{ #category : #commands }
GL4_5 >> glBindTextureUnit: unit with: texture [

	<apicall: void 'glBindTextureUnit' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glBlitNamedFramebuffer: readFramebuffer with: drawFramebuffer with: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [

	<apicall: void 'glBlitNamedFramebuffer' (GLuint GLuint GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCheckNamedFramebufferStatus: framebuffer with: target [

	<apicall: GLenum 'glCheckNamedFramebufferStatus' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClearNamedBufferData: buffer with: internalformat with: format with: type with: data [

	<apicall: void 'glClearNamedBufferData' (GLuint GLenum GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClearNamedBufferSubData: buffer with: internalformat with: offset with: size with: format with: type with: data [

	<apicall: void 'glClearNamedBufferSubData' (GLuint GLenum GLintptr GLsizeiptr GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClearNamedFramebufferfi: framebuffer with: buffer with: drawbuffer with: depth with: stencil [

	<apicall: void 'glClearNamedFramebufferfi' (GLuint GLenum GLint GLfloat GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClearNamedFramebufferfv: framebuffer with: buffer with: drawbuffer with: value [

	<apicall: void 'glClearNamedFramebufferfv' (GLuint GLenum GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClearNamedFramebufferiv: framebuffer with: buffer with: drawbuffer with: value [

	<apicall: void 'glClearNamedFramebufferiv' (GLuint GLenum GLint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClearNamedFramebufferuiv: framebuffer with: buffer with: drawbuffer with: value [

	<apicall: void 'glClearNamedFramebufferuiv' (GLuint GLenum GLint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glClipControl: origin with: depth [

	<apicall: void 'glClipControl' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCompressedTextureSubImage1D: texture with: level with: xoffset with: width with: format with: imageSize with: data [

	<apicall: void 'glCompressedTextureSubImage1D' (GLuint GLint GLint GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCompressedTextureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<apicall: void 'glCompressedTextureSubImage2D' (GLuint GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCompressedTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<apicall: void 'glCompressedTextureSubImage3D' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCopyNamedBufferSubData: readBuffer with: writeBuffer with: readOffset with: writeOffset with: size [

	<apicall: void 'glCopyNamedBufferSubData' (GLuint GLuint GLintptr GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCopyTextureSubImage1D: texture with: level with: xoffset with: x with: y with: width [

	<apicall: void 'glCopyTextureSubImage1D' (GLuint GLint GLint GLint GLint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCopyTextureSubImage2D: texture with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<apicall: void 'glCopyTextureSubImage2D' (GLuint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCopyTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<apicall: void 'glCopyTextureSubImage3D' (GLuint GLint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateBuffers: n with: buffers [

	<apicall: void 'glCreateBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateFramebuffers: n with: framebuffers [

	<apicall: void 'glCreateFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateProgramPipelines: n with: pipelines [

	<apicall: void 'glCreateProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateQueries: target with: n with: ids [

	<apicall: void 'glCreateQueries' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateRenderbuffers: n with: renderbuffers [

	<apicall: void 'glCreateRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateSamplers: n with: samplers [

	<apicall: void 'glCreateSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateTextures: target with: n with: textures [

	<apicall: void 'glCreateTextures' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateTransformFeedbacks: n with: ids [

	<apicall: void 'glCreateTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glCreateVertexArrays: n with: arrays [

	<apicall: void 'glCreateVertexArrays' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glDisableVertexArrayAttrib: vaobj with: index [

	<apicall: void 'glDisableVertexArrayAttrib' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glEnableVertexArrayAttrib: vaobj with: index [

	<apicall: void 'glEnableVertexArrayAttrib' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glFlushMappedNamedBufferRange: buffer with: offset with: length [

	<apicall: void 'glFlushMappedNamedBufferRange' (GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGenerateTextureMipmap: texture [

	<apicall: void 'glGenerateTextureMipmap' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetCompressedTextureImage: texture with: level with: bufSize with: pixels [

	<apicall: void 'glGetCompressedTextureImage' (GLuint GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetCompressedTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: bufSize with: pixels [

	<apicall: void 'glGetCompressedTextureSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetGraphicsResetStatus [

	<apicall: GLenum 'glGetGraphicsResetStatus' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedBufferParameteri64v: buffer with: pname with: params [

	<apicall: void 'glGetNamedBufferParameteri64v' (GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedBufferParameteriv: buffer with: pname with: params [

	<apicall: void 'glGetNamedBufferParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedBufferPointerv: buffer with: pname with: params [

	<apicall: void 'glGetNamedBufferPointerv' (GLuint GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedBufferSubData: buffer with: offset with: size with: data [

	<apicall: void 'glGetNamedBufferSubData' (GLuint GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedFramebufferAttachmentParameteriv: framebuffer with: attachment with: pname with: params [

	<apicall: void 'glGetNamedFramebufferAttachmentParameteriv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedFramebufferParameteriv: framebuffer with: pname with: param [

	<apicall: void 'glGetNamedFramebufferParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetNamedRenderbufferParameteriv: renderbuffer with: pname with: params [

	<apicall: void 'glGetNamedRenderbufferParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetQueryBufferObjecti64v: id with: buffer with: pname with: offset [

	<apicall: void 'glGetQueryBufferObjecti64v' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetQueryBufferObjectiv: id with: buffer with: pname with: offset [

	<apicall: void 'glGetQueryBufferObjectiv' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetQueryBufferObjectui64v: id with: buffer with: pname with: offset [

	<apicall: void 'glGetQueryBufferObjectui64v' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetQueryBufferObjectuiv: id with: buffer with: pname with: offset [

	<apicall: void 'glGetQueryBufferObjectuiv' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureImage: texture with: level with: format with: type with: bufSize with: pixels [

	<apicall: void 'glGetTextureImage' (GLuint GLint GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureLevelParameterfv: texture with: level with: pname with: params [

	<apicall: void 'glGetTextureLevelParameterfv' (GLuint GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureLevelParameteriv: texture with: level with: pname with: params [

	<apicall: void 'glGetTextureLevelParameteriv' (GLuint GLint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureParameterIiv: texture with: pname with: params [

	<apicall: void 'glGetTextureParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureParameterIuiv: texture with: pname with: params [

	<apicall: void 'glGetTextureParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureParameterfv: texture with: pname with: params [

	<apicall: void 'glGetTextureParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureParameteriv: texture with: pname with: params [

	<apicall: void 'glGetTextureParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: bufSize with: pixels [

	<apicall: void 'glGetTextureSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTransformFeedbacki64_v: xfb with: pname with: index with: param [

	<apicall: void 'glGetTransformFeedbacki64_v' (GLuint GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTransformFeedbacki_v: xfb with: pname with: index with: param [

	<apicall: void 'glGetTransformFeedbacki_v' (GLuint GLenum GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetTransformFeedbackiv: xfb with: pname with: param [

	<apicall: void 'glGetTransformFeedbackiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetVertexArrayIndexed64iv: vaobj with: index with: pname with: param [

	<apicall: void 'glGetVertexArrayIndexed64iv' (GLuint GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetVertexArrayIndexediv: vaobj with: index with: pname with: param [

	<apicall: void 'glGetVertexArrayIndexediv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetVertexArrayiv: vaobj with: pname with: param [

	<apicall: void 'glGetVertexArrayiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetnCompressedTexImage: target with: lod with: bufSize with: pixels [

	<apicall: void 'glGetnCompressedTexImage' (GLenum GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetnTexImage: target with: level with: format with: type with: bufSize with: pixels [

	<apicall: void 'glGetnTexImage' (GLenum GLint GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetnUniformdv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformdv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetnUniformfv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformfv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetnUniformiv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformiv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glGetnUniformuiv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformuiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glInvalidateNamedFramebufferData: framebuffer with: numAttachments with: attachments [

	<apicall: void 'glInvalidateNamedFramebufferData' (GLuint GLsizei GLenum*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glInvalidateNamedFramebufferSubData: framebuffer with: numAttachments with: attachments with: x with: y with: width with: height [

	<apicall: void 'glInvalidateNamedFramebufferSubData' (GLuint GLsizei GLenum* GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glMapNamedBuffer: buffer with: access [

	<apicall: void* 'glMapNamedBuffer' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glMapNamedBufferRange: buffer with: offset with: length with: access [

	<apicall: void* 'glMapNamedBufferRange' (GLuint GLintptr GLsizeiptr GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glMemoryBarrierByRegion: barriers [

	<apicall: void 'glMemoryBarrierByRegion' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedBufferData: buffer with: size with: data with: usage [

	<apicall: void 'glNamedBufferData' (GLuint GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedBufferStorage: buffer with: size with: data with: flags [

	<apicall: void 'glNamedBufferStorage' (GLuint GLsizeiptr void* GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedBufferSubData: buffer with: offset with: size with: data [

	<apicall: void 'glNamedBufferSubData' (GLuint GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferDrawBuffer: framebuffer with: buf [

	<apicall: void 'glNamedFramebufferDrawBuffer' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferDrawBuffers: framebuffer with: n with: bufs [

	<apicall: void 'glNamedFramebufferDrawBuffers' (GLuint GLsizei GLenum*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferParameteri: framebuffer with: pname with: param [

	<apicall: void 'glNamedFramebufferParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferReadBuffer: framebuffer with: src [

	<apicall: void 'glNamedFramebufferReadBuffer' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferRenderbuffer: framebuffer with: attachment with: renderbuffertarget with: renderbuffer [

	<apicall: void 'glNamedFramebufferRenderbuffer' (GLuint GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferTexture: framebuffer with: attachment with: texture with: level [

	<apicall: void 'glNamedFramebufferTexture' (GLuint GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedFramebufferTextureLayer: framebuffer with: attachment with: texture with: level with: layer [

	<apicall: void 'glNamedFramebufferTextureLayer' (GLuint GLenum GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedRenderbufferStorage: renderbuffer with: internalformat with: width with: height [

	<apicall: void 'glNamedRenderbufferStorage' (GLuint GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glNamedRenderbufferStorageMultisample: renderbuffer with: samples with: internalformat with: width with: height [

	<apicall: void 'glNamedRenderbufferStorageMultisample' (GLuint GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glReadnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data [

	<apicall: void 'glReadnPixels' (GLint GLint GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureBarrier [

	<apicall: void 'glTextureBarrier' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureBuffer: texture with: internalformat with: buffer [

	<apicall: void 'glTextureBuffer' (GLuint GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureBufferRange: texture with: internalformat with: buffer with: offset with: size [

	<apicall: void 'glTextureBufferRange' (GLuint GLenum GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureParameterIiv: texture with: pname with: params [

	<apicall: void 'glTextureParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureParameterIuiv: texture with: pname with: params [

	<apicall: void 'glTextureParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureParameterf: texture with: pname with: param [

	<apicall: void 'glTextureParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureParameterfv: texture with: pname with: param [

	<apicall: void 'glTextureParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureParameteri: texture with: pname with: param [

	<apicall: void 'glTextureParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureParameteriv: texture with: pname with: param [

	<apicall: void 'glTextureParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureStorage1D: texture with: levels with: internalformat with: width [

	<apicall: void 'glTextureStorage1D' (GLuint GLsizei GLenum GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureStorage2D: texture with: levels with: internalformat with: width with: height [

	<apicall: void 'glTextureStorage2D' (GLuint GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureStorage2DMultisample: texture with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<apicall: void 'glTextureStorage2DMultisample' (GLuint GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureStorage3D: texture with: levels with: internalformat with: width with: height with: depth [

	<apicall: void 'glTextureStorage3D' (GLuint GLsizei GLenum GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureStorage3DMultisample: texture with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<apicall: void 'glTextureStorage3DMultisample' (GLuint GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureSubImage1D: texture with: level with: xoffset with: width with: format with: type with: pixels [

	<apicall: void 'glTextureSubImage1D' (GLuint GLint GLint GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<apicall: void 'glTextureSubImage2D' (GLuint GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<apicall: void 'glTextureSubImage3D' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTransformFeedbackBufferBase: xfb with: index with: buffer [

	<apicall: void 'glTransformFeedbackBufferBase' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glTransformFeedbackBufferRange: xfb with: index with: buffer with: offset with: size [

	<apicall: void 'glTransformFeedbackBufferRange' (GLuint GLuint GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glUnmapNamedBuffer: buffer [

	<apicall: GLboolean 'glUnmapNamedBuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayAttribBinding: vaobj with: attribindex with: bindingindex [

	<apicall: void 'glVertexArrayAttribBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayAttribFormat: vaobj with: attribindex with: size with: type with: normalized with: relativeoffset [

	<apicall: void 'glVertexArrayAttribFormat' (GLuint GLuint GLint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayAttribIFormat: vaobj with: attribindex with: size with: type with: relativeoffset [

	<apicall: void 'glVertexArrayAttribIFormat' (GLuint GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayAttribLFormat: vaobj with: attribindex with: size with: type with: relativeoffset [

	<apicall: void 'glVertexArrayAttribLFormat' (GLuint GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayBindingDivisor: vaobj with: bindingindex with: divisor [

	<apicall: void 'glVertexArrayBindingDivisor' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayElementBuffer: vaobj with: buffer [

	<apicall: void 'glVertexArrayElementBuffer' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayVertexBuffer: vaobj with: bindingindex with: buffer with: offset with: stride [

	<apicall: void 'glVertexArrayVertexBuffer' (GLuint GLuint GLuint GLintptr GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_5 >> glVertexArrayVertexBuffers: vaobj with: first with: count with: buffers with: offsets with: strides [

	<apicall: void 'glVertexArrayVertexBuffers' (GLuint GLuint GLsizei GLuint* GLintptr* GLsizei*)>
	^ self externalCallFailed
]
