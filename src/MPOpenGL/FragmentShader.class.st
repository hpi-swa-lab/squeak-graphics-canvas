Class {
	#name : #FragmentShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #'shader kind' }
FragmentShader >> kind [

	^ GL_FRAGMENT_SHADER
]
