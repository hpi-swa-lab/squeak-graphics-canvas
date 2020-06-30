Class {
	#name : #VertexShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #accessing }
VertexShader >> kind [

	^ GL_VERTEX_SHADER
]
