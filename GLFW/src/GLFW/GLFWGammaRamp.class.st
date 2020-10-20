Class {
	#name : #GLFWGammaRamp,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core'
}

{ #category : #'as yet unclassified' }
GLFWGammaRamp class >> fields [ "self defineFields"

	^ #(
		(red 'unsignedShort*')
		(green 'unsignedShort*')
		(blue 'unsignedShort*')
		(size 'unsignedInt')
	)
]
