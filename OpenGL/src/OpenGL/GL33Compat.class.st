Class {
	#name : #GL33Compat,
	#superclass : #GL32Compat,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL33Compat class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL33Compat class >> minorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL33Compat class >> versionNumber [

	^ 33
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> ANY_SAMPLES_PASSED [

	<generated>
	^ GL_ANY_SAMPLES_PASSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> INT_2_10_10_10_REV [

	<generated>
	^ GL_INT_2_10_10_10_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> MAX_DUAL_SOURCE_DRAW_BUFFERS [

	<generated>
	^ GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> ONE_MINUS_SRC1_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC1_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> ONE_MINUS_SRC1_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC1_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> RGB10_A2UI [

	<generated>
	^ GL_RGB10_A2UI
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> SAMPLER_BINDING [

	<generated>
	^ GL_SAMPLER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> SRC1_COLOR [

	<generated>
	^ GL_SRC1_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TEXTURE_SWIZZLE_A [

	<generated>
	^ GL_TEXTURE_SWIZZLE_A
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TEXTURE_SWIZZLE_B [

	<generated>
	^ GL_TEXTURE_SWIZZLE_B
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TEXTURE_SWIZZLE_G [

	<generated>
	^ GL_TEXTURE_SWIZZLE_G
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TEXTURE_SWIZZLE_R [

	<generated>
	^ GL_TEXTURE_SWIZZLE_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TEXTURE_SWIZZLE_RGBA [

	<generated>
	^ GL_TEXTURE_SWIZZLE_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TIMESTAMP [

	<generated>
	^ GL_TIMESTAMP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> TIME_ELAPSED [

	<generated>
	^ GL_TIME_ELAPSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> VERTEX_ATTRIB_ARRAY_DIVISOR [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_DIVISOR
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> bindFragDataLocationIndexed: program with: colorNumber with: index with: name [

	<generated>
	<apicall: void 'glBindFragDataLocationIndexed' (GLuint GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> bindSampler: unit with: sampler [

	<generated>
	<apicall: void 'glBindSampler' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> colorP3ui: type with: color [

	<generated>
	<apicall: void 'glColorP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> colorP3uiv: type with: color [

	<generated>
	<apicall: void 'glColorP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> colorP4ui: type with: color [

	<generated>
	<apicall: void 'glColorP4ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> colorP4uiv: type with: color [

	<generated>
	<apicall: void 'glColorP4uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> deleteSamplers: count with: samplers [

	<generated>
	<apicall: void 'glDeleteSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> genSamplers: count with: samplers [

	<generated>
	<apicall: void 'glGenSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getFragDataIndex: program with: name [

	<generated>
	<apicall: GLint 'glGetFragDataIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getQueryObjecti64v: id with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryObjecti64v' (GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getQueryObjectui64v: id with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryObjectui64v' (GLuint GLenum GLuint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getSamplerParameterIiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getSamplerParameterIuiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getSamplerParameterfv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> getSamplerParameteriv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> isSampler: sampler [

	<generated>
	<apicall: GLboolean 'glIsSampler' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP1ui: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP1ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP1uiv: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP1uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP2ui: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP2ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP2uiv: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP2uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP3ui: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP3ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP3uiv: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP3uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP4ui: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP4ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> multiTexCoordP4uiv: texture with: type with: coords [

	<generated>
	<apicall: void 'glMultiTexCoordP4uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> normalP3ui: type with: coords [

	<generated>
	<apicall: void 'glNormalP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> normalP3uiv: type with: coords [

	<generated>
	<apicall: void 'glNormalP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> queryCounter: id with: target [

	<generated>
	<apicall: void 'glQueryCounter' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> samplerParameterIiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> samplerParameterIuiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> samplerParameterf: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> samplerParameterfv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> samplerParameteri: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> samplerParameteriv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> secondaryColorP3ui: type with: color [

	<generated>
	<apicall: void 'glSecondaryColorP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> secondaryColorP3uiv: type with: color [

	<generated>
	<apicall: void 'glSecondaryColorP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP1ui: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP1ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP1uiv: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP1uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP2ui: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP2ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP2uiv: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP2uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP3ui: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP3uiv: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP4ui: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP4ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> texCoordP4uiv: type with: coords [

	<generated>
	<apicall: void 'glTexCoordP4uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribDivisor: index with: divisor [

	<generated>
	<apicall: void 'glVertexAttribDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP1ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP1ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP1uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP1uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP2ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP2ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP2uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP2uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP3ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP3ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP3uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP3uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP4ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP4ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexAttribP4uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP4uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexP2ui: type with: value [

	<generated>
	<apicall: void 'glVertexP2ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexP2uiv: type with: value [

	<generated>
	<apicall: void 'glVertexP2uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexP3ui: type with: value [

	<generated>
	<apicall: void 'glVertexP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexP3uiv: type with: value [

	<generated>
	<apicall: void 'glVertexP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexP4ui: type with: value [

	<generated>
	<apicall: void 'glVertexP4ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL33Compat >> vertexP4uiv: type with: value [

	<generated>
	<apicall: void 'glVertexP4uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]
