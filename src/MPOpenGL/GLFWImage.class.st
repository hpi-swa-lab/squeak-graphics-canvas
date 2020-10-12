Class {
	#name : #GLFWImage,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'MPOpenGL-GLFW'
}

{ #category : #'field definition' }
GLFWImage class >> fields [
	"GLFWImage defineFields"
	^ #(
		(width 'int')
		(height 'int')
		(pixels 'unsignedChar *')
	)
]
