Class {
	#name : #GL45Compat,
	#superclass : #GL44Compat,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL45Compat class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL45Compat class >> minorVersion [

	^ 5
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:53'
}
GL45Compat class >> versionNumber [

	^ 45
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> BACK [

	<generated>
	^ GL_BACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CLIP_DEPTH_MODE [

	<generated>
	^ GL_CLIP_DEPTH_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CLIP_ORIGIN [

	<generated>
	^ GL_CLIP_ORIGIN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> COLOR_TABLE [

	<generated>
	^ GL_COLOR_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CONTEXT_FLAG_ROBUST_ACCESS_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CONTEXT_LOST [

	<generated>
	^ GL_CONTEXT_LOST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CONTEXT_RELEASE_BEHAVIOR [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CONTEXT_RELEASE_BEHAVIOR_FLUSH [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CONVOLUTION_1D [

	<generated>
	^ GL_CONVOLUTION_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> CONVOLUTION_2D [

	<generated>
	^ GL_CONVOLUTION_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> GUILTY_CONTEXT_RESET [

	<generated>
	^ GL_GUILTY_CONTEXT_RESET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> HISTOGRAM [

	<generated>
	^ GL_HISTOGRAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> INNOCENT_CONTEXT_RESET [

	<generated>
	^ GL_INNOCENT_CONTEXT_RESET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> LOSE_CONTEXT_ON_RESET [

	<generated>
	^ GL_LOSE_CONTEXT_ON_RESET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> LOWER_LEFT [

	<generated>
	^ GL_LOWER_LEFT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> MAX_COMBINED_CLIP_AND_CULL_DISTANCES [

	<generated>
	^ GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> MAX_CULL_DISTANCES [

	<generated>
	^ GL_MAX_CULL_DISTANCES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> MINMAX [

	<generated>
	^ GL_MINMAX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> NEGATIVE_ONE_TO_ONE [

	<generated>
	^ GL_NEGATIVE_ONE_TO_ONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> NONE [

	<generated>
	^ GL_NONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> NO_RESET_NOTIFICATION [

	<generated>
	^ GL_NO_RESET_NOTIFICATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> POST_COLOR_MATRIX_COLOR_TABLE [

	<generated>
	^ GL_POST_COLOR_MATRIX_COLOR_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> POST_CONVOLUTION_COLOR_TABLE [

	<generated>
	^ GL_POST_CONVOLUTION_COLOR_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> PROXY_COLOR_TABLE [

	<generated>
	^ GL_PROXY_COLOR_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> PROXY_HISTOGRAM [

	<generated>
	^ GL_PROXY_HISTOGRAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> PROXY_POST_COLOR_MATRIX_COLOR_TABLE [

	<generated>
	^ GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> PROXY_POST_CONVOLUTION_COLOR_TABLE [

	<generated>
	^ GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> QUERY_BY_REGION_NO_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_BY_REGION_NO_WAIT_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> QUERY_BY_REGION_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_BY_REGION_WAIT_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> QUERY_NO_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_NO_WAIT_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> QUERY_TARGET [

	<generated>
	^ GL_QUERY_TARGET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> QUERY_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_WAIT_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> RESET_NOTIFICATION_STRATEGY [

	<generated>
	^ GL_RESET_NOTIFICATION_STRATEGY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> SEPARABLE_2D [

	<generated>
	^ GL_SEPARABLE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_1D [

	<generated>
	^ GL_TEXTURE_BINDING_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_1D_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_1D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_2D [

	<generated>
	^ GL_TEXTURE_BINDING_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_2D_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_3D [

	<generated>
	^ GL_TEXTURE_BINDING_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_BUFFER [

	<generated>
	^ GL_TEXTURE_BINDING_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_BINDING_RECTANGLE [

	<generated>
	^ GL_TEXTURE_BINDING_RECTANGLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> TEXTURE_TARGET [

	<generated>
	^ GL_TEXTURE_TARGET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> UNKNOWN_CONTEXT_RESET [

	<generated>
	^ GL_UNKNOWN_CONTEXT_RESET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> UPPER_LEFT [

	<generated>
	^ GL_UPPER_LEFT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> ZERO_TO_ONE [

	<generated>
	^ GL_ZERO_TO_ONE
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> bindTextureUnit: unit with: texture [

	<generated>
	<apicall: void 'glBindTextureUnit' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> blitNamedFramebuffer: readFramebuffer with: drawFramebuffer with: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [

	<generated>
	<apicall: void 'glBlitNamedFramebuffer' (GLuint GLuint GLint GLint GLint GLint GLint GLint GLint GLint GLbitfield GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> checkNamedFramebufferStatus: framebuffer with: target [

	<generated>
	<apicall: GLenum 'glCheckNamedFramebufferStatus' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clearNamedBufferData: buffer with: internalformat with: format with: type with: data [

	<generated>
	<apicall: void 'glClearNamedBufferData' (GLuint GLenum GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clearNamedBufferSubData: buffer with: internalformat with: offset with: size with: format with: type with: data [

	<generated>
	<apicall: void 'glClearNamedBufferSubData' (GLuint GLenum GLintptr GLsizeiptr GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clearNamedFramebufferfi: framebuffer with: buffer with: drawbuffer with: depth with: stencil [

	<generated>
	<apicall: void 'glClearNamedFramebufferfi' (GLuint GLenum GLint GLfloat GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clearNamedFramebufferfv: framebuffer with: buffer with: drawbuffer with: value [

	<generated>
	<apicall: void 'glClearNamedFramebufferfv' (GLuint GLenum GLint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clearNamedFramebufferiv: framebuffer with: buffer with: drawbuffer with: value [

	<generated>
	<apicall: void 'glClearNamedFramebufferiv' (GLuint GLenum GLint GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clearNamedFramebufferuiv: framebuffer with: buffer with: drawbuffer with: value [

	<generated>
	<apicall: void 'glClearNamedFramebufferuiv' (GLuint GLenum GLint GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> clipControl: origin with: depth [

	<generated>
	<apicall: void 'glClipControl' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> compressedTextureSubImage1D: texture with: level with: xoffset with: width with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTextureSubImage1D' (GLuint GLint GLint GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> compressedTextureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTextureSubImage2D' (GLuint GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> compressedTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTextureSubImage3D' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> copyNamedBufferSubData: readBuffer with: writeBuffer with: readOffset with: writeOffset with: size [

	<generated>
	<apicall: void 'glCopyNamedBufferSubData' (GLuint GLuint GLintptr GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> copyTextureSubImage1D: texture with: level with: xoffset with: x with: y with: width [

	<generated>
	<apicall: void 'glCopyTextureSubImage1D' (GLuint GLint GLint GLint GLint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> copyTextureSubImage2D: texture with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glCopyTextureSubImage2D' (GLuint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> copyTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glCopyTextureSubImage3D' (GLuint GLint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createBuffers: n with: buffers [

	<generated>
	<apicall: void 'glCreateBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createFramebuffers: n with: framebuffers [

	<generated>
	<apicall: void 'glCreateFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createProgramPipelines: n with: pipelines [

	<generated>
	<apicall: void 'glCreateProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createQueries: target with: n with: ids [

	<generated>
	<apicall: void 'glCreateQueries' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createRenderbuffers: n with: renderbuffers [

	<generated>
	<apicall: void 'glCreateRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createSamplers: n with: samplers [

	<generated>
	<apicall: void 'glCreateSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createTextures: target with: n with: textures [

	<generated>
	<apicall: void 'glCreateTextures' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createTransformFeedbacks: n with: ids [

	<generated>
	<apicall: void 'glCreateTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> createVertexArrays: n with: arrays [

	<generated>
	<apicall: void 'glCreateVertexArrays' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> disableVertexArrayAttrib: vaobj with: index [

	<generated>
	<apicall: void 'glDisableVertexArrayAttrib' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> enableVertexArrayAttrib: vaobj with: index [

	<generated>
	<apicall: void 'glEnableVertexArrayAttrib' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> flushMappedNamedBufferRange: buffer with: offset with: length [

	<generated>
	<apicall: void 'glFlushMappedNamedBufferRange' (GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> generateTextureMipmap: texture [

	<generated>
	<apicall: void 'glGenerateTextureMipmap' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getCompressedTextureImage: texture with: level with: bufSize with: pixels [

	<generated>
	<apicall: void 'glGetCompressedTextureImage' (GLuint GLint GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getCompressedTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: bufSize with: pixels [

	<generated>
	<apicall: void 'glGetCompressedTextureSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getGraphicsResetStatus [

	<generated>
	<apicall: GLenum 'glGetGraphicsResetStatus' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedBufferParameteri64v: buffer with: pname with: params [

	<generated>
	<apicall: void 'glGetNamedBufferParameteri64v' (GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedBufferParameteriv: buffer with: pname with: params [

	<generated>
	<apicall: void 'glGetNamedBufferParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedBufferPointerv: buffer with: pname with: params [

	<generated>
	<apicall: void 'glGetNamedBufferPointerv' (GLuint GLenum void**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedBufferSubData: buffer with: offset with: size with: data [

	<generated>
	<apicall: void 'glGetNamedBufferSubData' (GLuint GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedFramebufferAttachmentParameteriv: framebuffer with: attachment with: pname with: params [

	<generated>
	<apicall: void 'glGetNamedFramebufferAttachmentParameteriv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedFramebufferParameteriv: framebuffer with: pname with: param [

	<generated>
	<apicall: void 'glGetNamedFramebufferParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getNamedRenderbufferParameteriv: renderbuffer with: pname with: params [

	<generated>
	<apicall: void 'glGetNamedRenderbufferParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getQueryBufferObjecti64v: id with: buffer with: pname with: offset [

	<generated>
	<apicall: void 'glGetQueryBufferObjecti64v' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getQueryBufferObjectiv: id with: buffer with: pname with: offset [

	<generated>
	<apicall: void 'glGetQueryBufferObjectiv' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getQueryBufferObjectui64v: id with: buffer with: pname with: offset [

	<generated>
	<apicall: void 'glGetQueryBufferObjectui64v' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getQueryBufferObjectuiv: id with: buffer with: pname with: offset [

	<generated>
	<apicall: void 'glGetQueryBufferObjectuiv' (GLuint GLuint GLenum GLintptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureImage: texture with: level with: format with: type with: bufSize with: pixels [

	<generated>
	<apicall: void 'glGetTextureImage' (GLuint GLint GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureLevelParameterfv: texture with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTextureLevelParameterfv' (GLuint GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureLevelParameteriv: texture with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTextureLevelParameteriv' (GLuint GLint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureParameterIiv: texture with: pname with: params [

	<generated>
	<apicall: void 'glGetTextureParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureParameterIuiv: texture with: pname with: params [

	<generated>
	<apicall: void 'glGetTextureParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureParameterfv: texture with: pname with: params [

	<generated>
	<apicall: void 'glGetTextureParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureParameteriv: texture with: pname with: params [

	<generated>
	<apicall: void 'glGetTextureParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: bufSize with: pixels [

	<generated>
	<apicall: void 'glGetTextureSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTransformFeedbacki64_v: xfb with: pname with: index with: param [

	<generated>
	<apicall: void 'glGetTransformFeedbacki64_v' (GLuint GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTransformFeedbacki_v: xfb with: pname with: index with: param [

	<generated>
	<apicall: void 'glGetTransformFeedbacki_v' (GLuint GLenum GLuint GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getTransformFeedbackiv: xfb with: pname with: param [

	<generated>
	<apicall: void 'glGetTransformFeedbackiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getVertexArrayIndexed64iv: vaobj with: index with: pname with: param [

	<generated>
	<apicall: void 'glGetVertexArrayIndexed64iv' (GLuint GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getVertexArrayIndexediv: vaobj with: index with: pname with: param [

	<generated>
	<apicall: void 'glGetVertexArrayIndexediv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getVertexArrayiv: vaobj with: pname with: param [

	<generated>
	<apicall: void 'glGetVertexArrayiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnColorTable: target with: format with: type with: bufSize with: table [

	<generated>
	<apicall: void 'glGetnColorTable' (GLenum GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnCompressedTexImage: target with: lod with: bufSize with: pixels [

	<generated>
	<apicall: void 'glGetnCompressedTexImage' (GLenum GLint GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnConvolutionFilter: target with: format with: type with: bufSize with: image [

	<generated>
	<apicall: void 'glGetnConvolutionFilter' (GLenum GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnHistogram: target with: reset with: format with: type with: bufSize with: values [

	<generated>
	<apicall: void 'glGetnHistogram' (GLenum GLboolean GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnMapdv: target with: query with: bufSize with: v [

	<generated>
	<apicall: void 'glGetnMapdv' (GLenum GLenum GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnMapfv: target with: query with: bufSize with: v [

	<generated>
	<apicall: void 'glGetnMapfv' (GLenum GLenum GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnMapiv: target with: query with: bufSize with: v [

	<generated>
	<apicall: void 'glGetnMapiv' (GLenum GLenum GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnMinmax: target with: reset with: format with: type with: bufSize with: values [

	<generated>
	<apicall: void 'glGetnMinmax' (GLenum GLboolean GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnPixelMapfv: map with: bufSize with: values [

	<generated>
	<apicall: void 'glGetnPixelMapfv' (GLenum GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnPixelMapuiv: map with: bufSize with: values [

	<generated>
	<apicall: void 'glGetnPixelMapuiv' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnPixelMapusv: map with: bufSize with: values [

	<generated>
	<apicall: void 'glGetnPixelMapusv' (GLenum GLsizei GLushort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnPolygonStipple: bufSize with: pattern [

	<generated>
	<apicall: void 'glGetnPolygonStipple' (GLsizei GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnSeparableFilter: target with: format with: type with: rowBufSize with: row with: columnBufSize with: column with: span [

	<generated>
	<apicall: void 'glGetnSeparableFilter' (GLenum GLenum GLenum GLsizei void* GLsizei void* void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnTexImage: target with: level with: format with: type with: bufSize with: pixels [

	<generated>
	<apicall: void 'glGetnTexImage' (GLenum GLint GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnUniformdv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformdv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnUniformfv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformfv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnUniformiv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformiv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> getnUniformuiv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformuiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> invalidateNamedFramebufferData: framebuffer with: numAttachments with: attachments [

	<generated>
	<apicall: void 'glInvalidateNamedFramebufferData' (GLuint GLsizei GLenum*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> invalidateNamedFramebufferSubData: framebuffer with: numAttachments with: attachments with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glInvalidateNamedFramebufferSubData' (GLuint GLsizei GLenum* GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> mapNamedBuffer: buffer with: access [

	<generated>
	<apicall: void* 'glMapNamedBuffer' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> mapNamedBufferRange: buffer with: offset with: length with: access [

	<generated>
	<apicall: void* 'glMapNamedBufferRange' (GLuint GLintptr GLsizeiptr GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> memoryBarrierByRegion: barriers [

	<generated>
	<apicall: void 'glMemoryBarrierByRegion' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedBufferData: buffer with: size with: data with: usage [

	<generated>
	<apicall: void 'glNamedBufferData' (GLuint GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedBufferStorage: buffer with: size with: data with: flags [

	<generated>
	<apicall: void 'glNamedBufferStorage' (GLuint GLsizeiptr void* GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedBufferSubData: buffer with: offset with: size with: data [

	<generated>
	<apicall: void 'glNamedBufferSubData' (GLuint GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferDrawBuffer: framebuffer with: buf [

	<generated>
	<apicall: void 'glNamedFramebufferDrawBuffer' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferDrawBuffers: framebuffer with: n with: bufs [

	<generated>
	<apicall: void 'glNamedFramebufferDrawBuffers' (GLuint GLsizei GLenum*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferParameteri: framebuffer with: pname with: param [

	<generated>
	<apicall: void 'glNamedFramebufferParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferReadBuffer: framebuffer with: src [

	<generated>
	<apicall: void 'glNamedFramebufferReadBuffer' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferRenderbuffer: framebuffer with: attachment with: renderbuffertarget with: renderbuffer [

	<generated>
	<apicall: void 'glNamedFramebufferRenderbuffer' (GLuint GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferTexture: framebuffer with: attachment with: texture with: level [

	<generated>
	<apicall: void 'glNamedFramebufferTexture' (GLuint GLenum GLuint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedFramebufferTextureLayer: framebuffer with: attachment with: texture with: level with: layer [

	<generated>
	<apicall: void 'glNamedFramebufferTextureLayer' (GLuint GLenum GLuint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedRenderbufferStorage: renderbuffer with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glNamedRenderbufferStorage' (GLuint GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> namedRenderbufferStorageMultisample: renderbuffer with: samples with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glNamedRenderbufferStorageMultisample' (GLuint GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> readnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data [

	<generated>
	<apicall: void 'glReadnPixels' (GLint GLint GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureBarrier [

	<generated>
	<apicall: void 'glTextureBarrier' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureBuffer: texture with: internalformat with: buffer [

	<generated>
	<apicall: void 'glTextureBuffer' (GLuint GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureBufferRange: texture with: internalformat with: buffer with: offset with: size [

	<generated>
	<apicall: void 'glTextureBufferRange' (GLuint GLenum GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureParameterIiv: texture with: pname with: params [

	<generated>
	<apicall: void 'glTextureParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureParameterIuiv: texture with: pname with: params [

	<generated>
	<apicall: void 'glTextureParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureParameterf: texture with: pname with: param [

	<generated>
	<apicall: void 'glTextureParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureParameterfv: texture with: pname with: param [

	<generated>
	<apicall: void 'glTextureParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureParameteri: texture with: pname with: param [

	<generated>
	<apicall: void 'glTextureParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureParameteriv: texture with: pname with: param [

	<generated>
	<apicall: void 'glTextureParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureStorage1D: texture with: levels with: internalformat with: width [

	<generated>
	<apicall: void 'glTextureStorage1D' (GLuint GLsizei GLenum GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureStorage2D: texture with: levels with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glTextureStorage2D' (GLuint GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureStorage2DMultisample: texture with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTextureStorage2DMultisample' (GLuint GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureStorage3D: texture with: levels with: internalformat with: width with: height with: depth [

	<generated>
	<apicall: void 'glTextureStorage3D' (GLuint GLsizei GLenum GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureStorage3DMultisample: texture with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTextureStorage3DMultisample' (GLuint GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureSubImage1D: texture with: level with: xoffset with: width with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTextureSubImage1D' (GLuint GLint GLint GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTextureSubImage2D' (GLuint GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> textureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTextureSubImage3D' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> transformFeedbackBufferBase: xfb with: index with: buffer [

	<generated>
	<apicall: void 'glTransformFeedbackBufferBase' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> transformFeedbackBufferRange: xfb with: index with: buffer with: offset with: size [

	<generated>
	<apicall: void 'glTransformFeedbackBufferRange' (GLuint GLuint GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> unmapNamedBuffer: buffer [

	<generated>
	<apicall: GLboolean 'glUnmapNamedBuffer' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayAttribBinding: vaobj with: attribindex with: bindingindex [

	<generated>
	<apicall: void 'glVertexArrayAttribBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayAttribFormat: vaobj with: attribindex with: size with: type with: normalized with: relativeoffset [

	<generated>
	<apicall: void 'glVertexArrayAttribFormat' (GLuint GLuint GLint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayAttribIFormat: vaobj with: attribindex with: size with: type with: relativeoffset [

	<generated>
	<apicall: void 'glVertexArrayAttribIFormat' (GLuint GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayAttribLFormat: vaobj with: attribindex with: size with: type with: relativeoffset [

	<generated>
	<apicall: void 'glVertexArrayAttribLFormat' (GLuint GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayBindingDivisor: vaobj with: bindingindex with: divisor [

	<generated>
	<apicall: void 'glVertexArrayBindingDivisor' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayElementBuffer: vaobj with: buffer [

	<generated>
	<apicall: void 'glVertexArrayElementBuffer' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayVertexBuffer: vaobj with: bindingindex with: buffer with: offset with: stride [

	<generated>
	<apicall: void 'glVertexArrayVertexBuffer' (GLuint GLuint GLuint GLintptr GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL45Compat >> vertexArrayVertexBuffers: vaobj with: first with: count with: buffers with: offsets with: strides [

	<generated>
	<apicall: void 'glVertexArrayVertexBuffers' (GLuint GLuint GLsizei GLuint* GLintptr* GLsizei*)>
	^ self externalCallFailed
]
