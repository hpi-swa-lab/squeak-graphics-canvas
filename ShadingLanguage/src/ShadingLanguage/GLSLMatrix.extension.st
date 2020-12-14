Extension { #name : #GLSLMatrix }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 17:10'
}
GLSLMatrix >> negated [
	^ SLMappingToOperator new
			type: self componentType instance;
			selector: '-'
]
