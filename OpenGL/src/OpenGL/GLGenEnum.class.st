Class {
	#name : #GLGenEnum,
	#superclass : #GLGenObject,
	#instVars : [
		'value',
		'groups'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #helpers }
GLGenEnum class >> convertEnumValueString: aString [

	^ (aString beginsWith: '0x')
		ifTrue: [	Number
					readFrom: (ReadStream on: aString from: 3 to: aString size)
					base: 16]
		ifFalse: [aString asNumber]
]

{ #category : #'instance creation' }
GLGenEnum class >> registry: registry tag: enumTag [

	^ self new
		registry: registry tag: enumTag;
		yourself
]

{ #category : #accessing }
GLGenEnum >> groups [

	^ groups
]

{ #category : #initialization }
GLGenEnum >> initialize [

	super initialize.
	groups := OrderedCollection new
]

{ #category : #printing }
GLGenEnum >> printOn: aStream [

	aStream
		nextPutAll: name;
		space.
	value printOn: aStream
]

{ #category : #generation }
GLGenEnum >> printRemoveSourceInProfile: aSymbol [

	^ String streamContents: [:stream |
		stream
			nextPutAll: self selector;
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: 'profile == '.
		aSymbol storeOn: stream.
		stream
			nextPutAll: ' ifTrue: [^ self profileError].';
			cr; tab;
			nextPutAll: '^ super ';
			nextPutAll: self selector]
]

{ #category : #generation }
GLGenEnum >> printRequireSourceInProfile: aSymbol [

	^ String streamContents: [:stream |
		stream
			nextPutAll: self selector;
			cr; tab;
			nextPutAll: '"Note: Only available in '.
		aSymbol storeOn: stream.
		stream
			nextPutAll: ' profile"';
			cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: '^ ';
			nextPutAll: name]
]

{ #category : #generation }
GLGenEnum >> printSharedRemoveSource [

	^ String streamContents: [:stream |
		stream
			nextPutAll: self selector;
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: '^ self versionError']
]

{ #category : #generation }
GLGenEnum >> printSharedRequireSource [

	^ String streamContents: [:stream |
		stream
			nextPutAll: self selector;
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: '^ ';
			nextPutAll: name]
]

{ #category : #initialization }
GLGenEnum >> registry: registry tag: enumTag [

	name := enumTag attributeAt: #name.
	value := GLGenEnum convertEnumValueString: (enumTag attributeAt: #value).
	
	enumTag attributes at: #group ifPresent: [:groupNames |
		groupNames findTokens: ',' do: [:groupName |
			| group |
			group := GLGenEnumGroup registry: registry name: groupName.
			group addEnum: self.
			groups add: group]].
	
	registry addEnum: self
]

{ #category : #generation }
GLGenEnum >> selector [

	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{ #category : #accessing }
GLGenEnum >> value [

	^ value
]
