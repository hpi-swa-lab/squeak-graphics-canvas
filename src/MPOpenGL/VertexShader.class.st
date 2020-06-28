Class {
	#name : #VertexShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #'shader kind' }
VertexShader >> kind [

	^ GL_VERTEX_SHADER
]
