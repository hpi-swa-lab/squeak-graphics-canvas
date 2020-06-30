Class {
	#name : #TessEvaluationShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #accessing }
TessEvaluationShader >> kind [

	^ GL_TESS_EVALUATION_SHADER
]
