Extension { #name : #GLSLSampler }

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 12/14/2020 16:57'
}
GLSLSampler >> at: aVector2Type [
	self flag: #todo. "dynamic input / output dimenstions"
	
	self assert: (aVector2Type isKindOf: GLSLFloatVector2).
	^ SLMappingToCall new
		targetSelector: 'texture';
		type: GLSLFloatVector4 instance.
]
