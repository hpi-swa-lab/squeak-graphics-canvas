Class {
	#name : #SLMappingToCondition,
	#superclass : #SLMessageMapping,
	#instVars : [
		'isNegated'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 13:41'
}
SLMappingToCondition >> isNegated [

	^ isNegated
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 13:41'
}
SLMappingToCondition >> isNegated: anObject [

	isNegated := anObject
]
