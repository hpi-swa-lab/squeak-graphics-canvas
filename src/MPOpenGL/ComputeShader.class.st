Class {
	#name : #ComputeShader,
	#superclass : #GLShaderSource,
	#category : #'MPOpenGL-Shaders'
}

{ #category : #accessing }
ComputeShader >> kind [

	^ GL_COMPUTE_SHADER
]
