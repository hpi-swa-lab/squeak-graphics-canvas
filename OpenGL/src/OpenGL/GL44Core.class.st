Class {
	#name : #GL44Core,
	#superclass : #GL43Core,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL44Core class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL44Core class >> minorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:53'
}
GL44Core class >> versionNumber [

	^ 44
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> BUFFER_IMMUTABLE_STORAGE [

	<generated>
	^ GL_BUFFER_IMMUTABLE_STORAGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> BUFFER_STORAGE_FLAGS [

	<generated>
	^ GL_BUFFER_STORAGE_FLAGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> CLEAR_TEXTURE [

	<generated>
	^ GL_CLEAR_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> CLIENT_MAPPED_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> CLIENT_STORAGE_BIT [

	<generated>
	^ GL_CLIENT_STORAGE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> DYNAMIC_STORAGE_BIT [

	<generated>
	^ GL_DYNAMIC_STORAGE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> LOCATION_COMPONENT [

	<generated>
	^ GL_LOCATION_COMPONENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> MAP_COHERENT_BIT [

	<generated>
	^ GL_MAP_COHERENT_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> MAP_PERSISTENT_BIT [

	<generated>
	^ GL_MAP_PERSISTENT_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> MAP_READ_BIT [

	<generated>
	^ GL_MAP_READ_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> MAP_WRITE_BIT [

	<generated>
	^ GL_MAP_WRITE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> MAX_VERTEX_ATTRIB_STRIDE [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> MIRROR_CLAMP_TO_EDGE [

	<generated>
	^ GL_MIRROR_CLAMP_TO_EDGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED [

	<generated>
	^ GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> QUERY_BUFFER [

	<generated>
	^ GL_QUERY_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> QUERY_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_QUERY_BUFFER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> QUERY_BUFFER_BINDING [

	<generated>
	^ GL_QUERY_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> QUERY_RESULT_NO_WAIT [

	<generated>
	^ GL_QUERY_RESULT_NO_WAIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> STENCIL_INDEX [

	<generated>
	^ GL_STENCIL_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> STENCIL_INDEX8 [

	<generated>
	^ GL_STENCIL_INDEX8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> TEXTURE_BUFFER_BINDING [

	<generated>
	^ GL_TEXTURE_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> TRANSFORM_FEEDBACK_BUFFER [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> TRANSFORM_FEEDBACK_BUFFER_INDEX [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> TRANSFORM_FEEDBACK_BUFFER_STRIDE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> UNSIGNED_INT_10F_11F_11F_REV [

	<generated>
	^ GL_UNSIGNED_INT_10F_11F_11F_REV
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bindBuffersBase: target with: first with: count with: buffers [

	<generated>
	<apicall: void 'glBindBuffersBase' (GLenum GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bindBuffersRange: target with: first with: count with: buffers with: offsets with: sizes [

	<generated>
	<apicall: void 'glBindBuffersRange' (GLenum GLuint GLsizei GLuint* GLintptr* GLsizeiptr*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bindImageTextures: first with: count with: textures [

	<generated>
	<apicall: void 'glBindImageTextures' (GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bindSamplers: first with: count with: samplers [

	<generated>
	<apicall: void 'glBindSamplers' (GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bindTextures: first with: count with: textures [

	<generated>
	<apicall: void 'glBindTextures' (GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bindVertexBuffers: first with: count with: buffers with: offsets with: strides [

	<generated>
	<apicall: void 'glBindVertexBuffers' (GLuint GLsizei GLuint* GLintptr* GLsizei*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> bufferStorage: target with: size with: data with: flags [

	<generated>
	<apicall: void 'glBufferStorage' (GLenum GLsizeiptr void* GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> clearTexImage: texture with: level with: format with: type with: data [

	<generated>
	<apicall: void 'glClearTexImage' (GLuint GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL44Core >> clearTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: data [

	<generated>
	<apicall: void 'glClearTexSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]
