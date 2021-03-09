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
	#timestamp : 'stlu 2/22/2021 12:21'
}
KhrDefinition class >> registry: registry owner: owner actionTag: actionTag targetTag: targetTag [

	| cls |
	cls := self subclassForTarget: targetTag.
	^ cls new
		registry: registry owner: owner actionTag: actionTag targetTag: targetTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/22/2021 12:20'
}
KhrDefinition class >> subclassForTarget: targetTag [

	targetTag tag = #command ifTrue: [^ KhrCommandDefinition].
	targetTag tag = #enum ifTrue: [^ KhrEnumDefinition].
	targetTag tag = #type ifTrue: [^ KhrTypeDefinition].
	^ nil
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
	#timestamp : 'stlu 2/22/2021 12:23'
}
KhrDefinition >> registry: registry owner: anOwner actionTag: actionTag targetTag: targetTag [

	name := targetTag attributes at: #name.
	owner := anOwner.
	action := actionTag tag.
	target := (self targets: registry) at: name
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:55'
}
KhrDefinition >> target [

	^ target
]
