Class {
	#name : #GLFWImage,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core'
}

{ #category : #'field definition' }
GLFWImage class >> fields [ "self defineFields"

	^ #(
		(width 'int')
		(height 'int')
		(pixels 'unsignedChar*')
	)
]
