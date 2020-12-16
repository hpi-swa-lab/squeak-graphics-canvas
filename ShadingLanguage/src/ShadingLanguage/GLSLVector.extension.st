Extension { #name : #GLSLVector }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/16/2020 14:31'
}
GLSLVector >> * another [
	(another isMatrix or: [ another isVector ] or: [ another isScalar ]) ifFalse: [
		^ self error: 'Tried to multiply vector with something that is neither a vector nor a matrix nor a scalar'].
	self componentType = another componentType ifFalse: [
		^ self error: 'Tried to multiply ', self class name , ' with ', another class name, ', which have different component types.'].
	
	another isMatrix ifTrue: [
		self numComponents = another numRows ifFalse: [
			^ self error: 'Tried to multiply vector of length', self numComponents, 'with matrix of height ', another numRows].
		^ SLMappingToOperator new
			type: (GLSLVector componentType: self componentType numComponents: another numColumns);
			targetSelector: '*'].
		
	another isVector ifTrue: [
		self numComponents = another numComponents ifFalse: [
			^ self error: 'Tried to multiply vector of length', self numComponents, 'with vector of length ', another numComponents].
		^ SLMappingToOperator new
			type: self;
			targetSelector: '*'].
	
	"another is a scalar"
	^ SLMappingToOperator new
		type: self;
		targetSelector: '*'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:09'
}
GLSLVector >> + another [
	(another isScalar or: [another isVector]) ifFalse: [
		^ self error: 'Attempt to add a ', another class name , ' to a vector, but can only add scalars and vectors.'].
	self componentType ~= another componentType ifTrue: [
		^ self error: 'Tried to add ', another componentType , ' to ', self componentType , '.'].
	(self numComponents ~= another numComponents
		and: [another numComponents > 1]) ifTrue: [
			^ self error: 'Can''t implictly convert vector of size ' , another numComponents , ' to vector of size ' , self numComponents].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '+'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 18:39'
}
GLSLVector >> - another [
	(self = another or: [another = self componentType]) ifFalse: [
		^ self error: 'Tried to subtract ', another class name , ' from ', self class name, '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '-'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:10'
}
GLSLVector >> @ another [
	| resultSize resultType |
	(another isScalar or: [another isVector]) ifFalse: [
			^ self error: 'Attempt to use @ with a ', another class name , ', but it can only be used with scalars and vectors.'].
	
	resultSize := self numComponents + another numComponents.
	resultSize > 4 ifTrue: [
		^ self error: 'Result of @ vector concatination results in ', resultSize, ' elements, but ',
			'the maximum possible vector size is 4.'].
	
	resultType := GLSLVector componentType: self componentType numComponents: resultSize.
	^ SLMappingToCall new
		type: resultType;
		targetSelector: resultType declarator
	
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:10'
}
GLSLVector >> doesNotUnderstand: aMessage [
	| selector swizzlingChars sets |
	swizzlingChars := 'xyzwstpqrgba:'.
	sets := #('xyzw:' 'stpq:' 'rgba:').
	selector := aMessage selector asString.
	
	(selector findTokens: swizzlingChars) ifNotEmpty: [
		^ super doesNotUnderstand: aMessage ].
	
	(sets anySatisfy: [ :set | (selector findTokens: set) isEmpty ]) ifFalse: [
		^ self error: 'Vector component swizzling token ' , selector , ' contains component names' ,
			' from different sets, but they have to be from only one of either xyzw, stpq or rgba.'].
	
	aMessage numArgs = 0 ifTrue: [ | resultType |
		selector size > 4 ifTrue: [
			^ self error: 'Vector compontent access ', selector , ' has ', selector size , ' components, ' ,
				' but you can only access 4 at once.'].
		
		resultType := GLSLVector componentType: self componentType numComponents: selector size.
		^ SLMappingToComponentRead new
				targetSelector: selector;
				type: resultType].
			
	self notYetImplemented.
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/15/2020 18:25'
}
GLSLVector >> dot: another [
	(self componentType isFloat or: [ self componentType isDouble ]) ifFalse: [
		^ self error: 'tried to normalize a vector that is not of float or double type'].
	another isVector ifFalse: [
		^ self error: 'tried to take dot product of ', self, ' with a ', another, ' which is not a vector'].
	self componentType = another componentType ifFalse: [
		^ self error: 'tried to take dot product of ', self, ' and ', another].
	^ SLMappingToCall new
			type: self componentType;
			targetSelector: 'dot'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/15/2020 18:13'
}
GLSLVector >> max: another [
	(self = another or: [another = self componentType]) ifFalse: [
		^ self error: 'tried to take max of ', self, ' and ', another].
	^ SLMappingToCall new
			type: self;
			targetSelector: 'max'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:10'
}
GLSLVector >> negated [
	^ SLMappingToOperator new
			type: self componentType;
			targetSelector: '-'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/15/2020 18:04'
}
GLSLVector >> normalized [
	(self componentType isFloat or: [ self componentType isDouble ]) ifFalse: [
		^ self error: 'tried to normalize a vector that is not of float or double type'].
	^ SLMappingToCall new
			type: self;
			targetSelector: 'normalize'
]
