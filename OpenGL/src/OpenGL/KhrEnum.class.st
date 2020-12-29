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
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:03'
}
KhrEnum >> acceptVisitor: aVisitor [

	^ aVisitor visitEnum: self
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
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrEnum >> isEnum [

	^ true
]

{
	#category : #printing,
	#timestamp : 'stlu 12/28/2020 14:33'
}
KhrEnum >> printOn: aStream [

	aStream
		nextPutAll: name;
		space;
		print: value
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
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 23:00'
}
KhrEnum >> value [

	^ value
]
