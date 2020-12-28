Class {
	#name : #KhrRegistryObject,
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
KhrRegistryObject >> name [

	^ name
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 21:29'
}
KhrRegistryObject >> name: stringOrSymbol [

	name := stringOrSymbol
]
