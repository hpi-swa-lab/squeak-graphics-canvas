Class {
	#name : #GeometryShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #'shader kind' }
GeometryShader >> kind [

	^ GL_GEOMETRY_SHADER
]
