Class {
	#name : #SLInterfaceObject,
	#superclass : #Object,
	#instVars : [
		'kind',
		'analyzer'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:32'
}
SLInterfaceObject >> analyzer [

	^ analyzer
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:32'
}
SLInterfaceObject >> analyzer: anObject [

	analyzer := anObject
]

{
	#category : #'error handling',
	#timestamp : 'zagto 11/24/2020 22:12'
}
SLInterfaceObject >> doesNotUnderstand: aMessage [
	| name |
	name := aMessage selector asString.
	aMessage numArgs = 0
		ifTrue: [
			analyzer declareProgramResource: name kind: kind.
			^ SLInterfaceIntermediateObject new
				name: name;
				analyzer: analyzer ].

		aMessage selector isBinary ifTrue: [
			^	self error: name , ' is a binary message, which is not a possible name for a program resource'].
			
		(name allButLast splitBy: ':') with: aMessage arguments do: [ :partName :type |
			analyzer declareProgramResource: name kind: kind.
			analyzer setVariable: partName toType: type ]

]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:32'
}
SLInterfaceObject >> kind [

	^ kind
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:32'
}
SLInterfaceObject >> kind: anObject [

	kind := anObject
]
