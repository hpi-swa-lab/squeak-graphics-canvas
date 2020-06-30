Class {
	#name : #'GL4_1',
	#superclass : #'GL4_0',
	#category : 'MPOpenGL-Versions'
}

{ #category : #commands }
GL4_1 >> glActiveShaderProgram: pipeline with: program [

	<apicall: void 'glActiveShaderProgram' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glBindProgramPipeline: pipeline [

	<apicall: void 'glBindProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glClearDepthf: d [

	<apicall: void 'glClearDepthf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glCreateShaderProgramv: type with: count with: strings [

	<apicall: GLuint 'glCreateShaderProgramv' (GLenum GLsizei GLchar**)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glDeleteProgramPipelines: n with: pipelines [

	<apicall: void 'glDeleteProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glDepthRangeArrayv: first with: count with: v [

	<apicall: void 'glDepthRangeArrayv' (GLuint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glDepthRangeIndexed: index with: n with: f [

	<apicall: void 'glDepthRangeIndexed' (GLuint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glDepthRangef: n with: f [

	<apicall: void 'glDepthRangef' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGenProgramPipelines: n with: pipelines [

	<apicall: void 'glGenProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetDoublei_v: target with: index with: data [

	<apicall: void 'glGetDoublei_v' (GLenum GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetFloati_v: target with: index with: data [

	<apicall: void 'glGetFloati_v' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetProgramBinary: program with: bufSize with: length with: binaryFormat with: binary [

	<apicall: void 'glGetProgramBinary' (GLuint GLsizei GLsizei* GLenum* void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog [

	<apicall: void 'glGetProgramPipelineInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetProgramPipelineiv: pipeline with: pname with: params [

	<apicall: void 'glGetProgramPipelineiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetShaderPrecisionFormat: shadertype with: precisiontype with: range with: precision [

	<apicall: void 'glGetShaderPrecisionFormat' (GLenum GLenum GLint* GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glGetVertexAttribLdv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribLdv' (GLuint GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glIsProgramPipeline: pipeline [

	<apicall: GLboolean 'glIsProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramBinary: program with: binaryFormat with: binary with: length [

	<apicall: void 'glProgramBinary' (GLuint GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramParameteri: program with: pname with: value [

	<apicall: void 'glProgramParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1d: program with: location with: v0 [

	<apicall: void 'glProgramUniform1d' (GLuint GLint GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1dv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1f: program with: location with: v0 [

	<apicall: void 'glProgramUniform1f' (GLuint GLint GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1i: program with: location with: v0 [

	<apicall: void 'glProgramUniform1i' (GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1ui: program with: location with: v0 [

	<apicall: void 'glProgramUniform1ui' (GLuint GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform1uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2d: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2d' (GLuint GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2dv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2f: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2f' (GLuint GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2i: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2i' (GLuint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2ui: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2ui' (GLuint GLint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform2uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3d: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3d' (GLuint GLint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3dv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3f: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3f' (GLuint GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3i: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3i' (GLuint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3ui: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3ui' (GLuint GLint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform3uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4d: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4d' (GLuint GLint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4dv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4dv' (GLuint GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4f: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4f' (GLuint GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4i: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4i' (GLuint GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4ui: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4ui' (GLuint GLint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniform4uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix2dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix2fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix2x3dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2x3dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix2x3fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix2x4dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2x4dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix2x4fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix3dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix3fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix3x2dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3x2dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix3x2fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix3x4dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3x4dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix3x4fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix4dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix4fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix4x2dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4x2dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix4x2fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix4x3dv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4x3dv' (GLuint GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glProgramUniformMatrix4x3fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glReleaseShaderCompiler [

	<apicall: void 'glReleaseShaderCompiler' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glScissorArrayv: first with: count with: v [

	<apicall: void 'glScissorArrayv' (GLuint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glScissorIndexed: index with: left with: bottom with: width with: height [

	<apicall: void 'glScissorIndexed' (GLuint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glScissorIndexedv: index with: v [

	<apicall: void 'glScissorIndexedv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glShaderBinary: count with: shaders with: binaryformat with: binary with: length [

	<apicall: void 'glShaderBinary' (GLsizei GLuint* GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glUseProgramStages: pipeline with: stages with: program [

	<apicall: void 'glUseProgramStages' (GLuint GLbitfield GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glValidateProgramPipeline: pipeline [

	<apicall: void 'glValidateProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL1d: index with: x [

	<apicall: void 'glVertexAttribL1d' (GLuint GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL1dv: index with: v [

	<apicall: void 'glVertexAttribL1dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL2d: index with: x with: y [

	<apicall: void 'glVertexAttribL2d' (GLuint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL2dv: index with: v [

	<apicall: void 'glVertexAttribL2dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL3d: index with: x with: y with: z [

	<apicall: void 'glVertexAttribL3d' (GLuint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL3dv: index with: v [

	<apicall: void 'glVertexAttribL3dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL4d: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttribL4d' (GLuint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribL4dv: index with: v [

	<apicall: void 'glVertexAttribL4dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glVertexAttribLPointer: index with: size with: type with: stride with: pointer [

	<apicall: void 'glVertexAttribLPointer' (GLuint GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glViewportArrayv: first with: count with: v [

	<apicall: void 'glViewportArrayv' (GLuint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glViewportIndexedf: index with: x with: y with: w with: h [

	<apicall: void 'glViewportIndexedf' (GLuint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_1 >> glViewportIndexedfv: index with: v [

	<apicall: void 'glViewportIndexedfv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #version }
GL4_1 >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_1 >> minorVersion [

	^ 1
]
