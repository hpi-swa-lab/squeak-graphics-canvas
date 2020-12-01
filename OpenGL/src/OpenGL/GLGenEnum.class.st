Class {
	#name : #GLGenEnum,
	#superclass : #GLGenObject,
	#instVars : [
		'value',
		'groups'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #helpers,
	#timestamp : ''
}
GLGenEnum class >> convertEnumValueString: aString [

	^ (aString beginsWith: '0x')
		ifTrue: [	Number
					readFrom: (ReadStream on: aString from: 3 to: aString size)
					base: 16]
		ifFalse: [aString asNumber]
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLGenEnum class >> registry: registry tag: enumTag [

	^ self new
		registry: registry tag: enumTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenEnum >> groups [

	^ groups
]

{
	#category : #initialization,
	#timestamp : ''
}
GLGenEnum >> initialize [

	super initialize.
	groups := OrderedCollection new
]

{
	#category : #printing,
	#timestamp : ''
}
GLGenEnum >> printOn: aStream [

	aStream
		nextPutAll: name;
		space.
	value printOn: aStream
]

{
	#category : #generation,
	#timestamp : ''
}
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

{
	#category : #generation,
	#timestamp : ''
}
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

{
	#category : #generation,
	#timestamp : ''
}
GLGenEnum >> printSharedRemoveSource [

	^ String streamContents: [:stream |
		stream
			nextPutAll: self selector;
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: '^ self versionError']
]

{
	#category : #generation,
	#timestamp : ''
}
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

{
	#category : #initialization,
	#timestamp : ''
}
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

{
	#category : #generation,
	#timestamp : ''
}
GLGenEnum >> selector [

	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenEnum >> value [

	^ value
]
