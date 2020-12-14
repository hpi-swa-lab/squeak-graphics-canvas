Extension { #name : #GLTVector }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/13/2020 17:31'
}
GLTVector >> + another [
	self componentType ~= another componentType ifTrue: [
		^ self error: 'Tried to add ', another componentType asString , ' to ', self componentType asString , '.'].
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
GLTVector >> - another [
	(self = another or: [another = self componentType]) ifFalse: [
		^ self error: 'Tried to subtract ', another class name , ' from ', self class name, '.'].

	^ SLMappingToOperator new
		type: self;
		targetSelector: '-'

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/8/2020 14:21'
}
GLTVector >> @ another [
	| resultSize resultType |
	((another isKindOf: GLTScalar) or: [
		another isKindOf: GLTVector]) ifFalse: [
			^ self error: 'Attempt to use @ with a ', another class name , ', but it can only be used with scalars and vectors.'].
	
	resultSize := self numComponents + another numComponents.
	resultSize > 4 ifTrue: [
		^ self error: 'Result of @ vector concatination results in ', resultSize, ' elements, but ',
			'the maximum possible vector size is 4.'].
	
	resultType := GLTVector componentType: self componentType instance numComponents: resultSize.
	^ SLMappingToCall new
		type: resultType instance;
		targetSelector: resultType declarator
	
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/9/2020 15:24'
}
GLTVector >> doesNotUnderstand: aMessage [
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
		
		resultType := GLTVector componentType: self componentType instance numComponents: selector size.
		^ SLMappingToComponentRead new
				targetSelector: selector;
				type: resultType].
			
	self notYetImplemented.
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 18:34'
}
GLTVector >> negated [
	^ SLMappingToOperator new
			type: self componentType instance;
			targetSelector: '-'
]
