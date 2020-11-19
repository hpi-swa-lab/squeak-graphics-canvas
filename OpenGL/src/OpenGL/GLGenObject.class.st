Class {
	#name : #GLGenObject,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #accessing }
GLGenObject >> name [

	^ name
]

{ #category : #accessing }
GLGenObject >> name: stringOrSymbol [

	name := stringOrSymbol
]
