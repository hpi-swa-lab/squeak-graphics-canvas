Class {
	#name : #KhrDefinition,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'profile',
		'target',
		'action'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/28/2020 14:38'
}
KhrDefinition class >> registry: registry profile: profile actionTag: actionTag targetTag: targetTag [

	^ self new
		registry: registry profile: profile actionTag: actionTag targetTag: targetTag;
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
	#timestamp : 'stlu 12/28/2020 14:36'
}
KhrDefinition >> profile [

	^ profile
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 12/28/2020 14:39'
}
KhrDefinition >> registry: registry profile: aProfile actionTag: actionTag targetTag: targetTag [

	| targets |
	name := targetTag attributes at: #name.
	profile := aProfile.
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
