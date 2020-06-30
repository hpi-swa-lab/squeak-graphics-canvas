Class {
	#name : #ComputeShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #accessing }
ComputeShader >> kind [

	^ GL_COMPUTE_SHADER
]
