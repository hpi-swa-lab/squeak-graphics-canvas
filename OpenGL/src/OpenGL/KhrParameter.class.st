Class {
	#name : #KhrParameter,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'type',
		'group',
		'length',
		'command'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #helpers,
	#timestamp : 'stlu 10/31/2020 23:49'
}
KhrParameter class >> getType: xmlTag [

	| result |
	result := String streamContents: [:stream |
		xmlTag elementsAndContentsDo: [:part |
			part isText
				ifTrue: [stream nextPutAll: part string]
				ifFalse: [
					part tag = #ptype ifTrue: [
						stream nextPutAll: part contentString]]]].
	^ (result copyReplaceAll: 'const' with: '') copyReplaceAll: ' ' with: ''
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 21:31'
}
KhrParameter class >> registry: registry command: command tag: paramTag [

	^ self new
		registry: registry command: command tag: paramTag;
		yourself
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 20:13'
}
KhrParameter class >> registry: registry tag: paramTag [

	^ self new
		registry: registry tag: paramTag;
		yourself
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:04'
}
KhrParameter >> acceptVisitor: aVisitor [

	^ aVisitor visitParameter: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrParameter >> command [

	^ command
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrParameter >> group [

	^ group
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrParameter >> length [

	^ length
]

{
	#category : #printing,
	#timestamp : 'stlu 11/1/2020 20:50'
}
KhrParameter >> printOn: aStream [

	aStream
		nextPutAll: type;
		space;
		nextPutAll: name
]

{
	#category : #initialization,
	#timestamp : 'stlu 3/3/2021 13:32'
}
KhrParameter >> registry: registry command: aCommand tag: paramTag [

	name := (paramTag firstTagNamed: #name) contentString.
	type := KhrParameter getType: paramTag.
	command := aCommand.
	
	length := paramTag attributes at: #len ifAbsent: [].
	group := paramTag attributes at: #group ifAbsent: [].
	
	command addParameter: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrParameter >> type [

	^ type
]
