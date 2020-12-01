Extension { #name : #GLType }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 18:45'
}
GLType >> ** another [
	((self isKindOf: GLTFloat) or: [
		(self isKindOf: GLTVector) and: [self class componentType = GLTFloat]]) ifFalse: [
			^ self error: 'Attempt to send message ** to ', self class name , ', but it is only ',
			'understood by float and float vector types'].
	self = another ifFalse: [
		^ self error: 'Tried to use operator ** between ', self class name, ' and ', another class name,
				'but it is only allowed between instances of the same type'].
		
	^ SLMappingToCall new
			type: self;
			targetSelector: 'pow'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 18:45'
}
GLType >> exp [
	((self isKindOf: GLTFloat) or: [
		(self isKindOf: GLTVector) and: [self class componentType = GLTFloat]]) ifFalse: [
			^ self error: 'Attempt to send message exp to ', self class name , ', but it is only ',
			'understood by float and float vector types'].
		
	^ SLMappingToCall new
			type: self componentType;
			targetSelector: 'exp'
]
