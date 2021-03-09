Class {
	#name : #GL33Core,
	#superclass : #GL32Core,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL33Core class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL33Core class >> minorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL33Core class >> versionNumber [

	^ 33
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> ANY_SAMPLES_PASSED [

	<generated>
	^ GL_ANY_SAMPLES_PASSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> INT_2_10_10_10_REV [

	<generated>
	^ GL_INT_2_10_10_10_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> MAX_DUAL_SOURCE_DRAW_BUFFERS [

	<generated>
	^ GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> ONE_MINUS_SRC1_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC1_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> ONE_MINUS_SRC1_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC1_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> RGB10_A2UI [

	<generated>
	^ GL_RGB10_A2UI
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> SAMPLER_BINDING [

	<generated>
	^ GL_SAMPLER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> SRC1_COLOR [

	<generated>
	^ GL_SRC1_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TEXTURE_SWIZZLE_A [

	<generated>
	^ GL_TEXTURE_SWIZZLE_A
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TEXTURE_SWIZZLE_B [

	<generated>
	^ GL_TEXTURE_SWIZZLE_B
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TEXTURE_SWIZZLE_G [

	<generated>
	^ GL_TEXTURE_SWIZZLE_G
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TEXTURE_SWIZZLE_R [

	<generated>
	^ GL_TEXTURE_SWIZZLE_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TEXTURE_SWIZZLE_RGBA [

	<generated>
	^ GL_TEXTURE_SWIZZLE_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TIMESTAMP [

	<generated>
	^ GL_TIMESTAMP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> TIME_ELAPSED [

	<generated>
	^ GL_TIME_ELAPSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> VERTEX_ATTRIB_ARRAY_DIVISOR [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_DIVISOR
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> bindFragDataLocationIndexed: program with: colorNumber with: index with: name [

	<generated>
	<apicall: void 'glBindFragDataLocationIndexed' (GLuint GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> bindSampler: unit with: sampler [

	<generated>
	<apicall: void 'glBindSampler' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> deleteSamplers: count with: samplers [

	<generated>
	<apicall: void 'glDeleteSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> genSamplers: count with: samplers [

	<generated>
	<apicall: void 'glGenSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getFragDataIndex: program with: name [

	<generated>
	<apicall: GLint 'glGetFragDataIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getQueryObjecti64v: id with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryObjecti64v' (GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getQueryObjectui64v: id with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryObjectui64v' (GLuint GLenum GLuint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getSamplerParameterIiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getSamplerParameterIuiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getSamplerParameterfv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> getSamplerParameteriv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> isSampler: sampler [

	<generated>
	<apicall: GLboolean 'glIsSampler' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> queryCounter: id with: target [

	<generated>
	<apicall: void 'glQueryCounter' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> samplerParameterIiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> samplerParameterIuiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> samplerParameterf: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> samplerParameterfv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> samplerParameteri: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> samplerParameteriv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribDivisor: index with: divisor [

	<generated>
	<apicall: void 'glVertexAttribDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP1ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP1ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP1uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP1uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP2ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP2ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP2uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP2uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP3ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP3ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP3uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP3uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP4ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP4ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Core >> vertexAttribP4uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP4uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]
