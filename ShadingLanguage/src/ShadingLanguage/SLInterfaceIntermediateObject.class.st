Class {
	#name : #SLInterfaceIntermediateObject,
	#superclass : #GLSLType,
	#instVars : [
		'analyzer',
		'name'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:31'
}
SLInterfaceIntermediateObject >> analyzer [

	^ analyzer
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:31'
}
SLInterfaceIntermediateObject >> analyzer: anObject [

	analyzer := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:58'
}
SLInterfaceIntermediateObject >> doesNotUnderstand: aMessage [
	| selector className class |
	selector := aMessage selector asString.
	(aMessage numArgs = 0 and: [ selector beginsWith: 'be' ]) ifFalse: [
		^ self error: 'Type of resource ' , name , ' is unclear at this point, you can only use be<Type> selector ' ,
			' on it to set the type, but you used ' , selector , '.' ].
	
	className := 'GLSL', (selector allButFirst: 2).
	class := self environment classNamed: className.
	class ifNil: [
		^ self error: 'Tried to set type of resource ' , name , ' to ' , className , ' which does not exist.'].
	
	"analyzer setVariable: name toType: class instance."
	self becomeForward: class instance.
	^ SLPassthroughMapping new type: class instance
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:31'
}
SLInterfaceIntermediateObject >> name [

	^ name
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 21:31'
}
SLInterfaceIntermediateObject >> name: anObject [

	name := anObject
]
