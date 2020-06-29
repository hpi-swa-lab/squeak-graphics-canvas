Class {
	#name : #ComputeShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #'shader kind' }
ComputeShader >> kind [

	^ GL_COMPUTE_SHADER
]
