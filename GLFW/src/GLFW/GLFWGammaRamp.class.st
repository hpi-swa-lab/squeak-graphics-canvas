Class {
	#name : #GLFWGammaRamp,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
GLFWGammaRamp class >> fields [ "self defineFields"

	^ #(
		(red 'unsignedShort*')
		(green 'unsignedShort*')
		(blue 'unsignedShort*')
		(size 'unsignedInt')
	)
]
