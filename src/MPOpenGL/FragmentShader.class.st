Class {
	#name : #FragmentShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #accessing }
FragmentShader >> kind [

	^ GL_FRAGMENT_SHADER
]
