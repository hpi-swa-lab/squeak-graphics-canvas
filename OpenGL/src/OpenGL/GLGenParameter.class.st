Class {
	#name : #GLGenParameter,
	#superclass : #GLGenObject,
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
GLGenParameter class >> getType: xmlTag [

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
GLGenParameter class >> registry: registry command: command tag: paramTag [

	^ self new
		registry: registry command: command tag: paramTag;
		yourself
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 20:13'
}
GLGenParameter class >> registry: registry tag: paramTag [

	^ self new
		registry: registry tag: paramTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
GLGenParameter >> command [

	^ command
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
GLGenParameter >> group [

	^ group
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
GLGenParameter >> length [

	^ length
]

{
	#category : #printing,
	#timestamp : 'stlu 11/1/2020 20:50'
}
GLGenParameter >> printOn: aStream [

	aStream
		nextPutAll: type;
		space;
		nextPutAll: name
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/1/2020 21:29'
}
GLGenParameter >> registry: registry command: aCommand tag: paramTag [

	name := (paramTag firstTagNamed: #name) contentString.
	type := GLGenParameter getType: paramTag.
	command := aCommand.
	
	paramTag attributes at: #len ifPresent: [:len |
		length := len].
	paramTag attributes at: #group ifPresent: [:groupName |
		group := GLGenEnumGroup registry: registry name: groupName.
		group addParameter: self].
	
	command addParameter: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
GLGenParameter >> type [

	^ type
]
