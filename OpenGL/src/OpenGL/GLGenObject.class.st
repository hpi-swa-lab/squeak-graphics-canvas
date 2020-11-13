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
	#timestamp : 'stlu 11/1/2020 19:34'
}
GLGenObject >> name [

	^ name
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 21:29'
}
GLGenObject >> name: stringOrSymbol [

	name := stringOrSymbol
]
