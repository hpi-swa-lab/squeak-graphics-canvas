Extension { #name : #GLSLType }

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 12/15/2020 13:16'
}
GLSLType >> ** another [
	(self isFloat or: [self isVector and: [self componentType isFloat]]) ifFalse: [
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
	#'squeak_changestamp' : 'stlu 12/15/2020 13:09'
}
GLSLType >> exp [
	(self isFloat or: [self isVector and: [self componentType isFloat]]) ifFalse: [
			^ self error: 'Attempt to send message exp to ', self , ', but it is only ',
			'understood by float and float vector types'].
		
	^ SLMappingToCall new
			type: self componentType;
			targetSelector: 'exp'
]
