Extension { #name : #GLSLScalar }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 17:52'
}
GLSLScalar >> * another [
	self = another ifFalse: [
		^ self error: 'Tried to multiply ', self class name , ' with ', another class name, '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '*'
	
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/13/2020 17:28'
}
GLSLScalar >> + another [
	self componentType ~= another componentType ifTrue: [
		^ self error: 'Tried to add ', another componentType asString , ' to ', self componentType asString , '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '+'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 17:51'
}
GLSLScalar >> - another [
	self = another ifFalse: [
		^ self error: 'Tried to subtract ', another class name , ' from ', self class name, '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '-'
	
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 17:54'
}
GLSLScalar >> / another [
	self = another ifFalse: [
		^ self error: 'Tried to divide ', self class name , ' by ', another class name, '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '/'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/14/2020 16:21'
}
GLSLScalar >> @ another [
	| resultSize resultType |
	((another isKindOf: GLSLScalar) or: [
		another isKindOf: GLSLVector]) ifFalse: [
			^ self error: 'Attempt to use @ with a ', another class name , ', but it can only be used with scalars and vectors.'].
	
	resultSize := self numComponents + another numComponents.
	resultSize > 4 ifTrue: [
		^ self error: 'Result of @ vector concatination results in ', resultSize, ' elements, but ',
			'the maximum possible vector size is 4.'].
	
	resultType := GLSLVector componentType: self numComponents: resultSize.
	^ SLMappingToCall new
		type: resultType instance;
		targetSelector: resultType declarator
	
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/14/2020 16:21'
}
GLSLScalar >> asVector3 [
	| resultType |
	resultType := GLSLVector componentType: self numComponents: 3.
	^ SLMappingToCall new
		type: resultType instance;
		targetSelector: resultType declarator
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 17:10'
}
GLSLScalar >> negated [
	^ SLMappingToOperator new
			type: self componentType instance;
			selector: '-'
]
