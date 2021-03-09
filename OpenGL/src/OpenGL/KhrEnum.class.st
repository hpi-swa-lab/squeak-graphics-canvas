Class {
	#name : #KhrEnum,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'value',
		'namespace',
		'api',
		'groups',
		'vendor',
		'suffix',
		'aliases',
		'type',
		'typeSuffix'
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
	#timestamp : 'stlu 3/4/2021 11:36'
}
KhrEnum class >> fromXMLTag: tag [

	^ self new
		initializeWithXMLTag: tag;
		yourself
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:03'
}
KhrEnum >> acceptVisitor: aVisitor [

	^ aVisitor visitEnum: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:09'
}
KhrEnum >> addAlias: aString [

	aliases add: aString
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/5/2021 12:50'
}
KhrEnum >> addGroup: aString [

	groups add: aString
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 11:40'
}
KhrEnum >> aliases [

	^ aliases
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:05'
}
KhrEnum >> api [

	^ api
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
	#timestamp : 'stlu 3/5/2021 12:47'
}
KhrEnum >> initialize [

	super initialize.
	groups := Set new.
	aliases := Set new
]

{
	#category : #initialization,
	#timestamp : 'stlu 3/5/2021 13:03'
}
KhrEnum >> initializeWithXMLTag: tag [

	name := tag attributeAt: #name.
	value := self class convertEnumValueString: (tag attributeAt: #value).
	
	tag attributes
		at: #group
		ifPresent: [:groupNames |
			groupNames findTokens: ',' do: [:groupName |
				self addGroup: groupName]].
	
	api := tag attributes at: #api ifAbsent: [].
	typeSuffix := tag attributes at: #type ifAbsent: [].
	suffix := (name findTokens: '_') last.
	(self class suffixes includes: suffix) ifFalse: [suffix := nil].
	
	tag attributes at: #alias ifPresent: [:alias | self addAlias: alias].
]

{
	#category : #testing,
	#timestamp : 'stlu 3/4/2021 12:13'
}
KhrEnum >> isBitmask [

	^ type = 'bitmask'
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrEnum >> isEnum [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:24'
}
KhrEnum >> namespace [

	^ namespace
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:24'
}
KhrEnum >> namespace: anObject [

	namespace := anObject
]

{
	#category : #printing,
	#timestamp : 'stlu 3/5/2021 13:31'
}
KhrEnum >> printOn: aStream [

	aStream
		nextPutAll: name;
		space;
		nextPutAll: self valueString
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:27'
}
KhrEnum >> suffix [

	^ suffix
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:14'
}
KhrEnum >> type [

	^ type
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:14'
}
KhrEnum >> type: anObject [

	type := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 12:19'
}
KhrEnum >> typeSuffix [

	^ typeSuffix
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 23:00'
}
KhrEnum >> value [

	^ value
]

{
	#category : #printing,
	#timestamp : 'stlu 3/5/2021 13:30'
}
KhrEnum >> valueString [

	^ value storeStringBase: (self isBitmask ifTrue: [2] ifFalse: [16])
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 11:40'
}
KhrEnum >> vendor [

	^ vendor
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/4/2021 11:40'
}
KhrEnum >> vendor: anObject [

	vendor := anObject
]
