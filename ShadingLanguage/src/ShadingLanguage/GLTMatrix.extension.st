Extension { #name : #GLTMatrix }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 17:10'
}
GLTMatrix >> negated [
	^ SLMappingToOperator new
			type: self componentType instance;
			selector: '-'
]
