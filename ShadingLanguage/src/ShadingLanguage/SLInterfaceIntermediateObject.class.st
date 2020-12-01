Class {
	#name : #SLInterfaceIntermediateObject,
	#superclass : #Object,
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
	#timestamp : 'zagto 12/1/2020 18:15'
}
SLInterfaceIntermediateObject >> beFloat2DSampler [
	analyzer setVariable: name toType: GLTFloat2DSampler instance.
	^ SLMappingToComponentRead new
		type: GLTFloat2DSampler instance;
		targetSelector: name.
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:16'
}
SLInterfaceIntermediateObject >> doesNotUnderstand: aMessage [
	| selector className class |
	selector := aMessage selector asString.
	(aMessage numArgs = 0 and: [ selector beginsWith: 'be' ]) ifFalse: [
		^ self error: 'Type of resource ' , name , ' is unclear at this point, you can only use be<Type> selector ' ,
			' on it to set the type, but you used ' , selector , '.' ].
	
	className := 'GLT', (selector allButFirst: 2).
	class := self environment classNamed: className.
	class ifNil: [
		^ self error: 'Tried to set type of resource ' , name , ' to ' , className , ' which does not exist.'].
	
	analyzer setVariable: name toType: class instance.
	^ SLMappingToResourceRead new
			targetSelector: name;
			type: class instance
			
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
