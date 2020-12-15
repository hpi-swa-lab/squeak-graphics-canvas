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
	#timestamp : 'stlu 12/2/2020 04:09'
}
SLInterfaceObject >> doesNotUnderstand: aMessage [
	| name names |
	name := aMessage selector asString.
	aMessage numArgs = 0
		ifTrue: [ | type |
			type := analyzer variableToType
				at: name
				ifAbsentPut: [
					analyzer declareProgramResource: name kind: kind.
					SLInterfaceIntermediateObject new
						name: name;
						analyzer: analyzer.].
			^ SLMappingToResourceRead new
				type: type;
				targetSelector: name ].

	aMessage selector isBinary ifTrue: [
		^	self error: name , ' is a binary message, which is not a possible name for a program resource'].

	names := (name allButLast splitBy: ':').
	names with: aMessage arguments do: [ :partName :type |
		analyzer declareProgramResource: partName kind: kind.
		analyzer setVariable: partName toType: type ].
	^ SLMappingToResourceAssignments new targetSelector: names.
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
