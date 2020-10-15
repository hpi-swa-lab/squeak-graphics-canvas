Class {
	#name : #'GLES23_1',
	#superclass : #'GLES23_0',
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GLES23_1 class >> majorVersion [

	^ 3
]

{ #category : #version }
GLES23_1 class >> minorVersion [

	^ 1
]

{ #category : #commands }
GLES23_1 >> glActiveShaderProgram: pipeline with: program [

	<apicall: void 'glActiveShaderProgram' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glBindImageTexture: unit with: texture with: level with: layered with: layer with: access with: format [

	<apicall: void 'glBindImageTexture' (GLuint GLuint GLint GLboolean GLint GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glBindProgramPipeline: pipeline [

	<apicall: void 'glBindProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glBindVertexBuffer: bindingindex with: buffer with: offset with: stride [

	<apicall: void 'glBindVertexBuffer' (GLuint GLuint GLintptr GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glCreateShaderProgramv: type with: count with: strings [

	<apicall: GLuint 'glCreateShaderProgramv' (GLenum GLsizei GLchar**)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glDeleteProgramPipelines: n with: pipelines [

	<apicall: void 'glDeleteProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glDispatchCompute: num_groups_x with: num_groups_y with: num_groups_z [

	<apicall: void 'glDispatchCompute' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glDispatchComputeIndirect: indirect [

	<apicall: void 'glDispatchComputeIndirect' (GLintptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glDrawArraysIndirect: mode with: indirect [

	<apicall: void 'glDrawArraysIndirect' (GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glDrawElementsIndirect: mode with: type with: indirect [

	<apicall: void 'glDrawElementsIndirect' (GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glFramebufferParameteri: target with: pname with: param [

	<apicall: void 'glFramebufferParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGenProgramPipelines: n with: pipelines [

	<apicall: void 'glGenProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetBooleani_v: target with: index with: data [

	<apicall: void 'glGetBooleani_v' (GLenum GLuint GLboolean*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetFramebufferParameteriv: target with: pname with: params [

	<apicall: void 'glGetFramebufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetMultisamplefv: pname with: index with: val [

	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramInterfaceiv: program with: programInterface with: pname with: params [

	<apicall: void 'glGetProgramInterfaceiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog [

	<apicall: void 'glGetProgramPipelineInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramPipelineiv: pipeline with: pname with: params [

	<apicall: void 'glGetProgramPipelineiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramResourceIndex: program with: programInterface with: name [

	<apicall: GLuint 'glGetProgramResourceIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramResourceLocation: program with: programInterface with: name [

	<apicall: GLint 'glGetProgramResourceLocation' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramResourceName: program with: programInterface with: index with: bufSize with: length with: name [

	<apicall: void 'glGetProgramResourceName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetProgramResourceiv: program with: programInterface with: index with: propCount with: props with: count with: length with: params [

	<apicall: void 'glGetProgramResourceiv' (GLuint GLenum GLuint GLsizei GLenum* GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetTexLevelParameterfv: target with: level with: pname with: params [

	<apicall: void 'glGetTexLevelParameterfv' (GLenum GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glGetTexLevelParameteriv: target with: level with: pname with: params [

	<apicall: void 'glGetTexLevelParameteriv' (GLenum GLint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glIsProgramPipeline: pipeline [

	<apicall: GLboolean 'glIsProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glMemoryBarrier: barriers [

	<apicall: void 'glMemoryBarrier' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glMemoryBarrierByRegion: barriers [

	<apicall: void 'glMemoryBarrierByRegion' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform1f: program with: location with: v0 [

	<apicall: void 'glProgramUniform1f' (GLuint GLint GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform1fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform1i: program with: location with: v0 [

	<apicall: void 'glProgramUniform1i' (GLuint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform1iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform1ui: program with: location with: v0 [

	<apicall: void 'glProgramUniform1ui' (GLuint GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform1uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform1uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform2f: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2f' (GLuint GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform2fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform2i: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2i' (GLuint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform2iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform2ui: program with: location with: v0 with: v1 [

	<apicall: void 'glProgramUniform2ui' (GLuint GLint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform2uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform2uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform3f: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3f' (GLuint GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform3fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform3i: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3i' (GLuint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform3iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform3ui: program with: location with: v0 with: v1 with: v2 [

	<apicall: void 'glProgramUniform3ui' (GLuint GLint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform3uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform3uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform4f: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4f' (GLuint GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform4fv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform4i: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4i' (GLuint GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform4iv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform4ui: program with: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glProgramUniform4ui' (GLuint GLint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniform4uiv: program with: location with: count with: value [

	<apicall: void 'glProgramUniform4uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix2fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix2x3fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix2x4fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix2x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix3fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix3x2fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix3x4fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix3x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix4fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix4x2fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glProgramUniformMatrix4x3fv: program with: location with: count with: transpose with: value [

	<apicall: void 'glProgramUniformMatrix4x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glSampleMaski: maskNumber with: mask [

	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glTexStorage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<apicall: void 'glTexStorage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glUseProgramStages: pipeline with: stages with: program [

	<apicall: void 'glUseProgramStages' (GLuint GLbitfield GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glValidateProgramPipeline: pipeline [

	<apicall: void 'glValidateProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glVertexAttribBinding: attribindex with: bindingindex [

	<apicall: void 'glVertexAttribBinding' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glVertexAttribFormat: attribindex with: size with: type with: normalized with: relativeoffset [

	<apicall: void 'glVertexAttribFormat' (GLuint GLint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glVertexAttribIFormat: attribindex with: size with: type with: relativeoffset [

	<apicall: void 'glVertexAttribIFormat' (GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_1 >> glVertexBindingDivisor: bindingindex with: divisor [

	<apicall: void 'glVertexBindingDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]
