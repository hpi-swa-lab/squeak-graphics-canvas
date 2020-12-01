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
	#timestamp : 'stlu 10/31/2020 23:06'
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
	#timestamp : 'stlu 11/1/2020 20:12'
}
GLGenEnum class >> registry: registry tag: enumTag [

	^ self new
		registry: registry tag: enumTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
GLGenEnum >> groups [

	^ groups
]

{
	#category : #initialization,
	#timestamp : 'stlu 10/31/2020 22:59'
}
GLGenEnum >> initialize [

	super initialize.
	groups := OrderedCollection new
]

{
	#category : #printing,
	#timestamp : 'stlu 11/1/2020 20:58'
}
GLGenEnum >> printOn: aStream [

	aStream
		nextPutAll: name;
		space.
	value printOn: aStream
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:12'
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
	#timestamp : 'stlu 11/3/2020 14:15'
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
	#timestamp : 'stlu 11/3/2020 14:09'
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
	#timestamp : 'stlu 11/3/2020 14:08'
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
	#timestamp : 'stlu 11/1/2020 21:30'
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
	#timestamp : 'stlu 11/3/2020 14:43'
}
GLGenEnum >> selector [

	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 23:00'
}
GLGenEnum >> value [

	^ value
]
