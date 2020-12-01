Class {
	#name : #GLFWImage,
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
GLFWImage class >> fields [ "self defineFields"

	^ #(
		(width 'int')
		(height 'int')
		(pixels 'unsignedChar*')
	)
]
