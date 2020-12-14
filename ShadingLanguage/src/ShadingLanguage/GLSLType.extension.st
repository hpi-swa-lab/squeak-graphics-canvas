Extension { #name : #GLSLType }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/14/2020 16:52'
}
GLSLType >> ** another [
	((self isKindOf: GLSLFloat) or: [
		(self isKindOf: GLSLVector) and: [self class componentType = GLSLFloat]]) ifFalse: [
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
	#timestamp : 'stlu 12/14/2020 16:53'
}
GLSLType >> exp [
	((self isKindOf: GLSLFloat) or: [
		(self isKindOf: GLSLVector) and: [self class componentType = GLSLFloat]]) ifFalse: [
			^ self error: 'Attempt to send message exp to ', self class name , ', but it is only ',
			'understood by float and float vector types'].
		
	^ SLMappingToCall new
			type: self componentType;
			targetSelector: 'exp'
]
