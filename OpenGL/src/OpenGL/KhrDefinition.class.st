Class {
	#name : #KhrDefinition,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'owner',
		'target',
		'action'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 2/15/2021 21:06'
}
KhrDefinition class >> registry: registry owner: owner actionTag: actionTag targetTag: targetTag [

	^ self new
		registry: registry owner: owner actionTag: actionTag targetTag: targetTag;
		yourself
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 14:27'
}
KhrDefinition >> acceptVisitor: aVisitor [

	^ aVisitor visitDefinition: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:55'
}
KhrDefinition >> action [

	^ action
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:51'
}
KhrDefinition >> isRemove [

	^ action = #remove
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:51'
}
KhrDefinition >> isRequire [

	^ action = #require
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/15/2021 21:05'
}
KhrDefinition >> owner [

	^ owner
]

{
	#category : #printing,
	#timestamp : 'stlu 12/28/2020 14:42'
}
KhrDefinition >> printOn: aStream [

	aStream
		nextPutAll: action;
		space.
	target isCommand ifTrue: [aStream nextPutAll: #command].
	target isEnum ifTrue: [aStream nextPutAll: #enum].
	aStream
		space;
		nextPutAll: target name
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/15/2021 21:05'
}
KhrDefinition >> profile [

	^ self owner
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 2/15/2021 21:07'
}
KhrDefinition >> registry: registry owner: anOwner actionTag: actionTag targetTag: targetTag [

	| targets |
	name := targetTag attributes at: #name.
	owner := anOwner.
	action := actionTag tag.
	targets := targetTag tag = #command
				ifTrue: [registry commands]
				ifFalse: [
					targetTag tag = #enum
						ifTrue: [registry enums]
						ifFalse: [^ self error: 'Ill-defined xml']].
	target := targets at: name
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:55'
}
KhrDefinition >> target [

	^ target
]
