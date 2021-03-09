Class {
	#name : #GL31,
	#superclass : #GL30,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL31 class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL31 class >> minorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL31 class >> versionNumber [

	^ 31
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> ACTIVE_UNIFORM_BLOCKS [

	<generated>
	^ GL_ACTIVE_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH [

	<generated>
	^ GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> COPY_READ_BUFFER [

	<generated>
	^ GL_COPY_READ_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> COPY_WRITE_BUFFER [

	<generated>
	^ GL_COPY_WRITE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> INT_SAMPLER_2D_RECT [

	<generated>
	^ GL_INT_SAMPLER_2D_RECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> INT_SAMPLER_BUFFER [

	<generated>
	^ GL_INT_SAMPLER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> INVALID_INDEX [

	<generated>
	^ GL_INVALID_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_COMBINED_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_COMBINED_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_FRAGMENT_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_GEOMETRY_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_RECTANGLE_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_RECTANGLE_TEXTURE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_TEXTURE_BUFFER_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_UNIFORM_BLOCK_SIZE [

	<generated>
	^ GL_MAX_UNIFORM_BLOCK_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_UNIFORM_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_UNIFORM_BUFFER_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> MAX_VERTEX_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> PRIMITIVE_RESTART [

	<generated>
	^ GL_PRIMITIVE_RESTART
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> PRIMITIVE_RESTART_INDEX [

	<generated>
	^ GL_PRIMITIVE_RESTART_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> PROXY_TEXTURE_RECTANGLE [

	<generated>
	^ GL_PROXY_TEXTURE_RECTANGLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> R16_SNORM [

	<generated>
	^ GL_R16_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> R8_SNORM [

	<generated>
	^ GL_R8_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> RG16_SNORM [

	<generated>
	^ GL_RG16_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> RG8_SNORM [

	<generated>
	^ GL_RG8_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> RGB16_SNORM [

	<generated>
	^ GL_RGB16_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> RGB8_SNORM [

	<generated>
	^ GL_RGB8_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> RGBA16_SNORM [

	<generated>
	^ GL_RGBA16_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> RGBA8_SNORM [

	<generated>
	^ GL_RGBA8_SNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> SAMPLER_2D_RECT [

	<generated>
	^ GL_SAMPLER_2D_RECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> SAMPLER_2D_RECT_SHADOW [

	<generated>
	^ GL_SAMPLER_2D_RECT_SHADOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> SAMPLER_BUFFER [

	<generated>
	^ GL_SAMPLER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> SIGNED_NORMALIZED [

	<generated>
	^ GL_SIGNED_NORMALIZED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> TEXTURE_BINDING_BUFFER [

	<generated>
	^ GL_TEXTURE_BINDING_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> TEXTURE_BINDING_RECTANGLE [

	<generated>
	^ GL_TEXTURE_BINDING_RECTANGLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> TEXTURE_BUFFER [

	<generated>
	^ GL_TEXTURE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> TEXTURE_BUFFER_DATA_STORE_BINDING [

	<generated>
	^ GL_TEXTURE_BUFFER_DATA_STORE_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> TEXTURE_RECTANGLE [

	<generated>
	^ GL_TEXTURE_RECTANGLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_ARRAY_STRIDE [

	<generated>
	^ GL_UNIFORM_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_ACTIVE_UNIFORMS [

	<generated>
	^ GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES [

	<generated>
	^ GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_BINDING [

	<generated>
	^ GL_UNIFORM_BLOCK_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_DATA_SIZE [

	<generated>
	^ GL_UNIFORM_BLOCK_DATA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_INDEX [

	<generated>
	^ GL_UNIFORM_BLOCK_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_NAME_LENGTH [

	<generated>
	^ GL_UNIFORM_BLOCK_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BUFFER [

	<generated>
	^ GL_UNIFORM_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BUFFER_BINDING [

	<generated>
	^ GL_UNIFORM_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BUFFER_SIZE [

	<generated>
	^ GL_UNIFORM_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_BUFFER_START [

	<generated>
	^ GL_UNIFORM_BUFFER_START
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_IS_ROW_MAJOR [

	<generated>
	^ GL_UNIFORM_IS_ROW_MAJOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_MATRIX_STRIDE [

	<generated>
	^ GL_UNIFORM_MATRIX_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_NAME_LENGTH [

	<generated>
	^ GL_UNIFORM_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_OFFSET [

	<generated>
	^ GL_UNIFORM_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_SIZE [

	<generated>
	^ GL_UNIFORM_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNIFORM_TYPE [

	<generated>
	^ GL_UNIFORM_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNSIGNED_INT_SAMPLER_2D_RECT [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_RECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> UNSIGNED_INT_SAMPLER_BUFFER [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_BUFFER
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> bindBufferBase: target with: index with: buffer [

	<generated>
	<apicall: void 'glBindBufferBase' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> bindBufferRange: target with: index with: buffer with: offset with: size [

	<generated>
	<apicall: void 'glBindBufferRange' (GLenum GLuint GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> copyBufferSubData: readTarget with: writeTarget with: readOffset with: writeOffset with: size [

	<generated>
	<apicall: void 'glCopyBufferSubData' (GLenum GLenum GLintptr GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> drawArraysInstanced: mode with: first with: count with: instancecount [

	<generated>
	<apicall: void 'glDrawArraysInstanced' (GLenum GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> drawElementsInstanced: mode with: count with: type with: indices with: instancecount [

	<generated>
	<apicall: void 'glDrawElementsInstanced' (GLenum GLsizei GLenum void* GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getActiveUniformBlockName: program with: uniformBlockIndex with: bufSize with: length with: uniformBlockName [

	<generated>
	<apicall: void 'glGetActiveUniformBlockName' (GLuint GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getActiveUniformBlockiv: program with: uniformBlockIndex with: pname with: params [

	<generated>
	<apicall: void 'glGetActiveUniformBlockiv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getActiveUniformName: program with: uniformIndex with: bufSize with: length with: uniformName [

	<generated>
	<apicall: void 'glGetActiveUniformName' (GLuint GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getActiveUniformsiv: program with: uniformCount with: uniformIndices with: pname with: params [

	<generated>
	<apicall: void 'glGetActiveUniformsiv' (GLuint GLsizei GLuint* GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getIntegeri_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetIntegeri_v' (GLenum GLuint GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getUniformBlockIndex: program with: uniformBlockName [

	<generated>
	<apicall: GLuint 'glGetUniformBlockIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> getUniformIndices: program with: uniformCount with: uniformNames with: uniformIndices [

	<generated>
	<apicall: void 'glGetUniformIndices' (GLuint GLsizei GLchar** GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> primitiveRestartIndex: index [

	<generated>
	<apicall: void 'glPrimitiveRestartIndex' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> texBuffer: target with: internalformat with: buffer [

	<generated>
	<apicall: void 'glTexBuffer' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL31 >> uniformBlockBinding: program with: uniformBlockIndex with: uniformBlockBinding [

	<generated>
	<apicall: void 'glUniformBlockBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]
