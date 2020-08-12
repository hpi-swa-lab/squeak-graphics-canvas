Class {
	#name : #'GL4_0',
	#superclass : #'GL3_3',
	#category : #'MPOpenGL-Versions'
}

{ #category : #version }
GL4_0 class >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_0 class >> minorVersion [

	^ 0
]

{ #category : #commands }
GL4_0 >> glBeginQueryIndexed: target with: index with: id [

	<apicall: void 'glBeginQueryIndexed' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glBindTransformFeedback: target with: id [

	<apicall: void 'glBindTransformFeedback' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glBlendEquationSeparatei: buf with: modeRGB with: modeAlpha [

	<apicall: void 'glBlendEquationSeparatei' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glBlendEquationi: buf with: mode [

	<apicall: void 'glBlendEquationi' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glBlendFuncSeparatei: buf with: srcRGB with: dstRGB with: srcAlpha with: dstAlpha [

	<apicall: void 'glBlendFuncSeparatei' (GLuint GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glBlendFunci: buf with: src with: dst [

	<apicall: void 'glBlendFunci' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glDeleteTransformFeedbacks: n with: ids [

	<apicall: void 'glDeleteTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glDrawArraysIndirect: mode with: indirect [

	<apicall: void 'glDrawArraysIndirect' (GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glDrawElementsIndirect: mode with: type with: indirect [

	<apicall: void 'glDrawElementsIndirect' (GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glDrawTransformFeedback: mode with: id [

	<apicall: void 'glDrawTransformFeedback' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glDrawTransformFeedbackStream: mode with: id with: stream [

	<apicall: void 'glDrawTransformFeedbackStream' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glEndQueryIndexed: target with: index [

	<apicall: void 'glEndQueryIndexed' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGenTransformFeedbacks: n with: ids [

	<apicall: void 'glGenTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetActiveSubroutineName: program with: shadertype with: index with: bufSize with: length with: name [

	<apicall: void 'glGetActiveSubroutineName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetActiveSubroutineUniformName: program with: shadertype with: index with: bufSize with: length with: name [

	<apicall: void 'glGetActiveSubroutineUniformName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetActiveSubroutineUniformiv: program with: shadertype with: index with: pname with: values [

	<apicall: void 'glGetActiveSubroutineUniformiv' (GLuint GLenum GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetProgramStageiv: program with: shadertype with: pname with: values [

	<apicall: void 'glGetProgramStageiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetQueryIndexediv: target with: index with: pname with: params [

	<apicall: void 'glGetQueryIndexediv' (GLenum GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetSubroutineIndex: program with: shadertype with: name [

	<apicall: GLuint 'glGetSubroutineIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetSubroutineUniformLocation: program with: shadertype with: name [

	<apicall: GLint 'glGetSubroutineUniformLocation' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetUniformSubroutineuiv: shadertype with: location with: params [

	<apicall: void 'glGetUniformSubroutineuiv' (GLenum GLint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glGetUniformdv: program with: location with: params [

	<apicall: void 'glGetUniformdv' (GLuint GLint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glIsTransformFeedback: id [

	<apicall: GLboolean 'glIsTransformFeedback' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glMinSampleShading: value [

	<apicall: void 'glMinSampleShading' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glPatchParameterfv: pname with: values [

	<apicall: void 'glPatchParameterfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glPatchParameteri: pname with: value [

	<apicall: void 'glPatchParameteri' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glPauseTransformFeedback [

	<apicall: void 'glPauseTransformFeedback' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glResumeTransformFeedback [

	<apicall: void 'glResumeTransformFeedback' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform1d: location with: x [

	<apicall: void 'glUniform1d' (GLint GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform1dv: location with: count with: value [

	<apicall: void 'glUniform1dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform2d: location with: x with: y [

	<apicall: void 'glUniform2d' (GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform2dv: location with: count with: value [

	<apicall: void 'glUniform2dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform3d: location with: x with: y with: z [

	<apicall: void 'glUniform3d' (GLint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform3dv: location with: count with: value [

	<apicall: void 'glUniform3dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform4d: location with: x with: y with: z with: w [

	<apicall: void 'glUniform4d' (GLint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniform4dv: location with: count with: value [

	<apicall: void 'glUniform4dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix2dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix2x3dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2x3dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix2x4dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2x4dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix3dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix3x2dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3x2dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix3x4dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3x4dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix4dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix4x2dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4x2dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformMatrix4x3dv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4x3dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_0 >> glUniformSubroutinesuiv: shadertype with: count with: indices [

	<apicall: void 'glUniformSubroutinesuiv' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]
