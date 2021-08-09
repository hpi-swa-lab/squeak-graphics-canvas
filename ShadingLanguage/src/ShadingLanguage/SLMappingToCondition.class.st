Class {
	#name : #SLMappingToCondition,
	#superclass : #SLMessageMapping,
	#instVars : [
		'isNegated'
	],
	#category : #'ShadingLanguage-Core'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/10/2021 13:41'
}
SLMappingToCondition >> isNegated [

	^ isNegated
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/10/2021 13:41'
}
SLMappingToCondition >> isNegated: anObject [

	isNegated := anObject
]
