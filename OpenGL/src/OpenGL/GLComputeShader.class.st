Class {
	#name : #GLComputeShader,
	#superclass : #GLShaderSource,
	#category : #'OpenGL-Shaders'
}

{ #category : #accessing }
GLComputeShader >> kind [

	^ GL_COMPUTE_SHADER
]
