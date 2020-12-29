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
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:03'
}
KhrRegistryObject >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrRegistryObject >> isCommand [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrRegistryObject >> isEnum [

	^ false
]

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
