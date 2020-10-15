Class {
	#name : #ComputeShader,
	#superclass : #GLShaderSource,
	#category : #'OpenGL-Shaders'
}

{ #category : #accessing }
ComputeShader >> kind [

	^ GL_COMPUTE_SHADER
]
