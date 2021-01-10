Extension { #name : #GLSLArray }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 17:27'
}
GLSLArray >> at: aType [

	self assert: (aType isInteger or: [aType isUnsignedInteger]).
	
	^ SLMappingToArrayRead new
		type: type
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 17:38'
}
GLSLArray >> at: aType put: otherType [

	self assert: (aType isInteger or: [aType isUnsignedInteger]).
	self assert: otherType = type.
	
	^ SLMappingToArrayWrite new
		type: otherType
]
