Class {
	#name : #GLFWGamepadState,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core'
}

{ #category : #'field definition' }
GLFWGamepadState class >> fields [ "self defineFields"

	^ #(
		(buttons 'unsignedChar[15]')
		(axes 'float[6]')
	)
]
