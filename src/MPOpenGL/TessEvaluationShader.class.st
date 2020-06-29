Class {
	#name : #TessEvaluationShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #'shader kind' }
TessEvaluationShader >> kind [

	^ GL_TESS_EVALUATION_SHADER
]
