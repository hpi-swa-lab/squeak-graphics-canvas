Extension { #name : #GLSLMatrix }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:07'
}
GLSLMatrix >> negated [
	^ SLMappingToOperator new
			type: self componentType;
			selector: '-'
]
