Class {
	#name : #GL41Core,
	#superclass : #GL40Core,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL41Core class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL41Core class >> minorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL41Core class >> versionNumber [

	^ 41
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> ACTIVE_PROGRAM [

	<generated>
	^ GL_ACTIVE_PROGRAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> ALL_SHADER_BITS [

	<generated>
	^ GL_ALL_SHADER_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> FIXED [

	<generated>
	^ GL_FIXED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> FRAGMENT_SHADER_BIT [

	<generated>
	^ GL_FRAGMENT_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> GEOMETRY_SHADER_BIT [

	<generated>
	^ GL_GEOMETRY_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> HIGH_FLOAT [

	<generated>
	^ GL_HIGH_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> HIGH_INT [

	<generated>
	^ GL_HIGH_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> IMPLEMENTATION_COLOR_READ_FORMAT [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> IMPLEMENTATION_COLOR_READ_TYPE [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> LAYER_PROVOKING_VERTEX [

	<generated>
	^ GL_LAYER_PROVOKING_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> LOW_FLOAT [

	<generated>
	^ GL_LOW_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> LOW_INT [

	<generated>
	^ GL_LOW_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> MAX_FRAGMENT_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_VECTORS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> MAX_VARYING_VECTORS [

	<generated>
	^ GL_MAX_VARYING_VECTORS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> MAX_VERTEX_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_VECTORS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> MAX_VIEWPORTS [

	<generated>
	^ GL_MAX_VIEWPORTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> MEDIUM_FLOAT [

	<generated>
	^ GL_MEDIUM_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> MEDIUM_INT [

	<generated>
	^ GL_MEDIUM_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> NUM_PROGRAM_BINARY_FORMATS [

	<generated>
	^ GL_NUM_PROGRAM_BINARY_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> NUM_SHADER_BINARY_FORMATS [

	<generated>
	^ GL_NUM_SHADER_BINARY_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> PROGRAM_BINARY_FORMATS [

	<generated>
	^ GL_PROGRAM_BINARY_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> PROGRAM_BINARY_LENGTH [

	<generated>
	^ GL_PROGRAM_BINARY_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> PROGRAM_BINARY_RETRIEVABLE_HINT [

	<generated>
	^ GL_PROGRAM_BINARY_RETRIEVABLE_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> PROGRAM_PIPELINE_BINDING [

	<generated>
	^ GL_PROGRAM_PIPELINE_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> PROGRAM_SEPARABLE [

	<generated>
	^ GL_PROGRAM_SEPARABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> RGB565 [

	<generated>
	^ GL_RGB565
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> SHADER_BINARY_FORMATS [

	<generated>
	^ GL_SHADER_BINARY_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> SHADER_COMPILER [

	<generated>
	^ GL_SHADER_COMPILER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> TESS_CONTROL_SHADER_BIT [

	<generated>
	^ GL_TESS_CONTROL_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> TESS_EVALUATION_SHADER_BIT [

	<generated>
	^ GL_TESS_EVALUATION_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> UNDEFINED_VERTEX [

	<generated>
	^ GL_UNDEFINED_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> VERTEX_SHADER_BIT [

	<generated>
	^ GL_VERTEX_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> VIEWPORT_BOUNDS_RANGE [

	<generated>
	^ GL_VIEWPORT_BOUNDS_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> VIEWPORT_INDEX_PROVOKING_VERTEX [

	<generated>
	^ GL_VIEWPORT_INDEX_PROVOKING_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> VIEWPORT_SUBPIXEL_BITS [

	<generated>
	^ GL_VIEWPORT_SUBPIXEL_BITS
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> activeShaderProgram: pipeline with: program [

	<generated>
	<apicall: void 'glActiveShaderProgram' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> bindProgramPipeline: pipeline [

	<generated>
	<apicall: void 'glBindProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> clearDepthf: d [

	<generated>
	<apicall: void 'glClearDepthf' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> createShaderProgramv: type with: count with: strings [

	<generated>
	<apicall: GLuint 'glCreateShaderProgramv' (GLenum GLsizei GLchar**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> deleteProgramPipelines: n with: pipelines [

	<generated>
	<apicall: void 'glDeleteProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> depthRangeArrayv: first with: count with: v [

	<generated>
	<apicall: void 'glDepthRangeArrayv' (GLuint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> depthRangeIndexed: index with: n with: f [

	<generated>
	<apicall: void 'glDepthRangeIndexed' (GLuint GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> depthRangef: n with: f [

	<generated>
	<apicall: void 'glDepthRangef' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> genProgramPipelines: n with: pipelines [

	<generated>
	<apicall: void 'glGenProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getDoublei_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetDoublei_v' (GLenum GLuint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getFloati_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetFloati_v' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getProgramBinary: program with: bufSize with: length with: binaryFormat with: binary [

	<generated>
	<apicall: void 'glGetProgramBinary' (GLuint GLsizei GLsizei* GLenum* void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog [

	<generated>
	<apicall: void 'glGetProgramPipelineInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getProgramPipelineiv: pipeline with: pname with: params [

	<generated>
	<apicall: void 'glGetProgramPipelineiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getShaderPrecisionFormat: shadertype with: precisiontype with: range with: precision [

	<generated>
	<apicall: void 'glGetShaderPrecisionFormat' (GLenum GLenum GLint* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> getVertexAttribLdv: index with: pname with: params [

	<generated>
	<apicall: void 'glGetVertexAttribLdv' (GLuint GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> isProgramPipeline: pipeline [

	<generated>
	<apicall: GLboolean 'glIsProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programBinary: program with: binaryFormat with: binary with: length [

	<generated>
	<apicall: void 'glProgramBinary' (GLuint GLenum void* GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programParameteri: program with: pname with: value [

	<generated>
	<apicall: void 'glProgramParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1d: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1d' (GLuint GLint GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1dv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1f: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1f' (GLuint GLint GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1i: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1i' (GLuint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1ui: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1ui' (GLuint GLint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform1uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2d: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2d' (GLuint GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2dv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2f: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2f' (GLuint GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2i: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2i' (GLuint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2ui: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2ui' (GLuint GLint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform2uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3d: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3d' (GLuint GLint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3dv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3f: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3f' (GLuint GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3i: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3i' (GLuint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3ui: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3ui' (GLuint GLint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform3uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4d: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4d' (GLuint GLint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4dv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4f: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4f' (GLuint GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4i: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4i' (GLuint GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4ui: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4ui' (GLuint GLint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniform4uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix2dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix2fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix2x3dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2x3dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix2x3fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix2x4dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2x4dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix2x4fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix3dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix3fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix3x2dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3x2dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix3x2fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix3x4dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3x4dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix3x4fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix4dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix4fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix4x2dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4x2dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix4x2fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix4x3dv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4x3dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> programUniformMatrix4x3fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> releaseShaderCompiler [

	<generated>
	<apicall: void 'glReleaseShaderCompiler' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> scissorArrayv: first with: count with: v [

	<generated>
	<apicall: void 'glScissorArrayv' (GLuint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> scissorIndexed: index with: left with: bottom with: width with: height [

	<generated>
	<apicall: void 'glScissorIndexed' (GLuint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> scissorIndexedv: index with: v [

	<generated>
	<apicall: void 'glScissorIndexedv' (GLuint GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> shaderBinary: count with: shaders with: binaryFormat with: binary with: length [

	<generated>
	<apicall: void 'glShaderBinary' (GLsizei GLuint* GLenum void* GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> useProgramStages: pipeline with: stages with: program [

	<generated>
	<apicall: void 'glUseProgramStages' (GLuint GLbitfield GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> validateProgramPipeline: pipeline [

	<generated>
	<apicall: void 'glValidateProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL1d: index with: x [

	<generated>
	<apicall: void 'glVertexAttribL1d' (GLuint GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL1dv: index with: v [

	<generated>
	<apicall: void 'glVertexAttribL1dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL2d: index with: x with: y [

	<generated>
	<apicall: void 'glVertexAttribL2d' (GLuint GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL2dv: index with: v [

	<generated>
	<apicall: void 'glVertexAttribL2dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL3d: index with: x with: y with: z [

	<generated>
	<apicall: void 'glVertexAttribL3d' (GLuint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL3dv: index with: v [

	<generated>
	<apicall: void 'glVertexAttribL3dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL4d: index with: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertexAttribL4d' (GLuint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribL4dv: index with: v [

	<generated>
	<apicall: void 'glVertexAttribL4dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> vertexAttribLPointer: index with: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glVertexAttribLPointer' (GLuint GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> viewportArrayv: first with: count with: v [

	<generated>
	<apicall: void 'glViewportArrayv' (GLuint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> viewportIndexedf: index with: x with: y with: w with: h [

	<generated>
	<apicall: void 'glViewportIndexedf' (GLuint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL41Core >> viewportIndexedfv: index with: v [

	<generated>
	<apicall: void 'glViewportIndexedfv' (GLuint GLfloat*)>
	^ self externalCallFailed
]
