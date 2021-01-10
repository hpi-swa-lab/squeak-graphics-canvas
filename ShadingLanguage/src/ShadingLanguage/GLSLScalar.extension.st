Extension { #name : #GLSLScalar }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/15/2020 18:27'
}
GLSLScalar >> * another [
	(self = another or: [(another isVector or: [another isMatrix]) and: [another componentType = self]]) ifFalse: [
		^ self error: 'Tried to multiply ', self class name , ' with ', another class name, '.'].

	^ SLMappingToOperator new
		type: another;
		targetSelector: '*'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:07'
}
GLSLScalar >> + another [
	(another isScalar or: [another isVector]) ifFalse: [
		^ self error: 'Attempt to add a ', another class name , ' to a vector, but can only add scalars and vectors.'].
	self componentType ~= another componentType ifTrue: [
		^ self error: 'Tried to add ', another componentType , ' to ', self componentType , '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '+'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 00:16'
}
GLSLScalar >> - another [

	(self = another or: [another isVector and: [another componentType = self]]) ifFalse: [
		^ self error: 'Tried to subtract ', another class name , ' from ', self class name, '.'].

	^ SLMappingToOperator new
		type: another;
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
	#timestamp : 'stlu 12/15/2020 13:12'
}
GLSLScalar >> @ another [
	| resultSize resultType |
	(another isScalar or: [another isVector]) ifFalse: [
			^ self error: 'Attempt to use @ with a ', another class name , ', but it can only be used with scalars and vectors.'].
	
	resultSize := self numComponents + another numComponents.
	resultSize > 4 ifTrue: [
		^ self error: 'Result of @ vector concatination results in ', resultSize, ' elements, but ',
			'the maximum possible vector size is 4.'].
	
	resultType := GLSLVector componentType: self numComponents: resultSize.
	^ SLMappingToCall new
		type: resultType;
		targetSelector: resultType declarator
	
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:12'
}
GLSLScalar >> asVector3 [
	| resultType |
	resultType := GLSLVector componentType: self numComponents: 3.
	^ SLMappingToCall new
		type: resultType;
		targetSelector: resultType declarator
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/9/2021 23:52'
}
GLSLScalar >> cos [

	(self componentType isFloat or: [ self componentType isDouble ]) ifFalse: [
		^ self error: 'cos only defined for float and double type'].
	^ SLMappingToCall new
			type: self;
			targetSelector: 'cos'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:07'
}
GLSLScalar >> negated [
	^ SLMappingToOperator new
			type: self componentType;
			selector: '-'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/15/2020 18:04'
}
GLSLScalar >> normalized [
	(self componentType isFloat or: [ self componentType isDouble ]) ifFalse: [
		^ self error: 'tried to normalize a scalar that is not of float or double type'].
	^ SLMappingToCall new
			type: self;
			targetSelector: 'normalize'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/9/2021 23:52'
}
GLSLScalar >> sin [

	(self componentType isFloat or: [ self componentType isDouble ]) ifFalse: [
		^ self error: 'sin only defined for float and double type'].
	^ SLMappingToCall new
			type: self;
			targetSelector: 'sin'
]
