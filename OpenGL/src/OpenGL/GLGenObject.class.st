Class {
	#name : #GLGenObject,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLGenObject >> name [

	^ name
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenObject >> name: stringOrSymbol [

	name := stringOrSymbol
]
