Class {
	#name : #GeometryShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #accessing }
GeometryShader >> kind [

	^ GL_GEOMETRY_SHADER
]
