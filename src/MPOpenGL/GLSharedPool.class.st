"
Subclasses also lookup bindings in superclasses.
"
Class {
	#name : #GLSharedPool,
	#superclass : #SharedPool,
	#category : 'MPOpenGL-Constants'
}

{ #category : #'as yet unclassified' }
GLSharedPool class >> bindingOf: varName [

	| aSymbol |
	aSymbol := varName asSymbol.
	(super bindingOf: aSymbol) ifNotNil: [:it | ^ it].
	^ self superclass bindingOf: aSymbol
]
