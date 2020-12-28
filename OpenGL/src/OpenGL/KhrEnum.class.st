Class {
	#name : #KhrEnum,
	#superclass : #KhrRegistryObject,
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
KhrEnum class >> convertEnumValueString: aString [

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
KhrEnum class >> registry: registry tag: enumTag [

	^ self new
		registry: registry tag: enumTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrEnum >> groups [

	^ groups
]

{
	#category : #initialization,
	#timestamp : 'stlu 10/31/2020 22:59'
}
KhrEnum >> initialize [

	super initialize.
	groups := OrderedCollection new
]

{
	#category : #printing,
	#timestamp : 'stlu 11/1/2020 20:58'
}
KhrEnum >> printOn: aStream [

	aStream
		nextPutAll: name;
		space.
	value printOn: aStream
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:12'
}
KhrEnum >> printRemoveSourceInProfile: aSymbol [

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
KhrEnum >> printRequireSourceInProfile: aSymbol [

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
KhrEnum >> printSharedRemoveSource [

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
KhrEnum >> printSharedRequireSource [

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
	#timestamp : 'stlu 12/28/2020 13:00'
}
KhrEnum >> registry: registry tag: enumTag [

	name := enumTag attributeAt: #name.
	value := KhrEnum convertEnumValueString: (enumTag attributeAt: #value).
	
	enumTag attributes at: #group ifPresent: [:groupNames |
		groupNames findTokens: ',' do: [:groupName |
			| group |
			group := KhrEnumGroup registry: registry name: groupName.
			group addEnum: self.
			groups add: group]].
	
	registry addEnum: self
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:43'
}
KhrEnum >> selector [

	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 23:00'
}
KhrEnum >> value [

	^ value
]
