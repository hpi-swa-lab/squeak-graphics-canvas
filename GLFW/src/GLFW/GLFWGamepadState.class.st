Class {
	#name : #GLFWGamepadState,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core',
	#commentStamp : ''
}

{
	#category : #'field definition',
	#timestamp : ''
}
GLFWGamepadState class >> fields [ "self defineFields"

	^ #(
		(buttons 'unsignedChar[15]')
		(axes 'float[6]')
	)
]
