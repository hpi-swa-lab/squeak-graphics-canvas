Class {
	#name : #GLGenParameter,
	#superclass : #GLGenObject,
	#instVars : [
		'type',
		'group',
		'length',
		'command'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #helpers }
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

{ #category : #'instance creation' }
GLGenParameter class >> registry: registry command: command tag: paramTag [

	^ self new
		registry: registry command: command tag: paramTag;
		yourself
]

{ #category : #'instance creation' }
GLGenParameter class >> registry: registry tag: paramTag [

	^ self new
		registry: registry tag: paramTag;
		yourself
]

{ #category : #accessing }
GLGenParameter >> command [

	^ command
]

{ #category : #accessing }
GLGenParameter >> group [

	^ group
]

{ #category : #accessing }
GLGenParameter >> length [

	^ length
]

{ #category : #printing }
GLGenParameter >> printOn: aStream [

	aStream
		nextPutAll: type;
		space;
		nextPutAll: name
]

{ #category : #initialization }
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

{ #category : #accessing }
GLGenParameter >> type [

	^ type
]
