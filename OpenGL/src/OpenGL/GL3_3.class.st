Class {
	#name : #'GL3_3',
	#superclass : #'GL3_2',
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL3_3 class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL3_3 class >> minorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL3_3 class >> versionNumber [

	^ 33
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> ANY_SAMPLES_PASSED [

	<generated>
	^ GL_ANY_SAMPLES_PASSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> INT_2_10_10_10_REV [

	<generated>
	^ GL_INT_2_10_10_10_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> MAX_DUAL_SOURCE_DRAW_BUFFERS [

	<generated>
	^ GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> ONE_MINUS_SRC1_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC1_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> ONE_MINUS_SRC1_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC1_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> RGB10_A2UI [

	<generated>
	^ GL_RGB10_A2UI
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> SAMPLER_BINDING [

	<generated>
	^ GL_SAMPLER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> SRC1_COLOR [

	<generated>
	^ GL_SRC1_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TEXTURE_SWIZZLE_A [

	<generated>
	^ GL_TEXTURE_SWIZZLE_A
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TEXTURE_SWIZZLE_B [

	<generated>
	^ GL_TEXTURE_SWIZZLE_B
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TEXTURE_SWIZZLE_G [

	<generated>
	^ GL_TEXTURE_SWIZZLE_G
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TEXTURE_SWIZZLE_R [

	<generated>
	^ GL_TEXTURE_SWIZZLE_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TEXTURE_SWIZZLE_RGBA [

	<generated>
	^ GL_TEXTURE_SWIZZLE_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TIMESTAMP [

	<generated>
	^ GL_TIMESTAMP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> TIME_ELAPSED [

	<generated>
	^ GL_TIME_ELAPSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> VERTEX_ATTRIB_ARRAY_DIVISOR [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_DIVISOR
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> bindFragDataLocationIndexed: program with: colorNumber with: index with: name [

	<generated>
	<apicall: void 'glBindFragDataLocationIndexed' (GLuint GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> bindSampler: unit with: sampler [

	<generated>
	<apicall: void 'glBindSampler' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> colorP3ui: type with: color [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glColorP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> colorP3uiv: type with: color [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glColorP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> colorP4ui: type with: color [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glColorP4ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> colorP4uiv: type with: color [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glColorP4uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> deleteSamplers: count with: samplers [

	<generated>
	<apicall: void 'glDeleteSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> genSamplers: count with: samplers [

	<generated>
	<apicall: void 'glGenSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getFragDataIndex: program with: name [

	<generated>
	<apicall: GLint 'glGetFragDataIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getQueryObjecti64v: id with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryObjecti64v' (GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getQueryObjectui64v: id with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryObjectui64v' (GLuint GLenum GLuint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getSamplerParameterIiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getSamplerParameterIuiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getSamplerParameterfv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> getSamplerParameteriv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> isSampler: sampler [

	<generated>
	<apicall: GLboolean 'glIsSampler' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP1ui: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP1ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP1uiv: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP1uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP2ui: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP2ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP2uiv: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP2uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP3ui: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP3ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP3uiv: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP3uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP4ui: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP4ui' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> multiTexCoordP4uiv: texture with: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glMultiTexCoordP4uiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> normalP3ui: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glNormalP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> normalP3uiv: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glNormalP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> queryCounter: id with: target [

	<generated>
	<apicall: void 'glQueryCounter' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> samplerParameterIiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> samplerParameterIuiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> samplerParameterf: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> samplerParameterfv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> samplerParameteri: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> samplerParameteriv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> secondaryColorP3ui: type with: color [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glSecondaryColorP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> secondaryColorP3uiv: type with: color [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glSecondaryColorP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP1ui: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP1ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP1uiv: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP1uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP2ui: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP2ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP2uiv: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP2uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP3ui: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP3uiv: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP4ui: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP4ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> texCoordP4uiv: type with: coords [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glTexCoordP4uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribDivisor: index with: divisor [

	<generated>
	<apicall: void 'glVertexAttribDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP1ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP1ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP1uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP1uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP2ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP2ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP2uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP2uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP3ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP3ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP3uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP3uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP4ui: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP4ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexAttribP4uiv: index with: type with: normalized with: value [

	<generated>
	<apicall: void 'glVertexAttribP4uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexP2ui: type with: value [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glVertexP2ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexP2uiv: type with: value [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glVertexP2uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexP3ui: type with: value [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glVertexP3ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexP3uiv: type with: value [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glVertexP3uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexP4ui: type with: value [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glVertexP4ui' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 12/29/2020 19:18'
}
GL3_3 >> vertexP4uiv: type with: value [
	"Note: Only available in compatibility profile."
	<generated>
	<apicall: void 'glVertexP4uiv' (GLenum GLuint*)>
	^ self externalCallFailed
]
