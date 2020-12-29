Class {
	#name : #KhrProfile,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'feature',
		'definitions'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/3/2020 14:24'
}
KhrProfile class >> feature: feature name: aSymbol [

	^ feature profiles
		at: aSymbol
		ifAbsentPut: [
			self new
				feature: feature;
				name: aSymbol;
				yourself]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:04'
}
KhrProfile >> acceptVisitor: aVisitor [

	^ aVisitor visitProfile: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 14:47'
}
KhrProfile >> definitions [

	^ definitions
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:56'
}
KhrProfile >> feature [

	^ feature
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:56'
}
KhrProfile >> feature: anObject [

	feature := anObject
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:27'
}
KhrProfile >> generateIn: aClass [

	requiredCommands do: [:each |
		aClass compile: (each printRequireSourceInProfile: name) classified: 'api - required'].
	removedCommands do: [:each |
		aClass compile: (each printRemoveSourceInProfile: name) classified: 'api - removed'].
	requiredEnums do: [:each |
		aClass compile: (each printRequireSourceInProfile: name) classified: 'constants - required'].
	removedEnums do: [:each |
		aClass compile: (each printRemoveSourceInProfile: name) classified: 'constants - removed']
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:21'
}
KhrProfile >> generateSharedIn: aClass [

	requiredCommands do: [:each |
		aClass compile: each printSharedRequireSource classified: 'api - required'].
	removedCommands do: [:each |
		aClass compile: each printSharedRemoveSource classified: 'api - removed'].
	requiredEnums do: [:each |
		aClass compile: each printSharedRequireSource classified: 'constants - required'].
	removedEnums do: [:each |
		aClass compile: each printSharedRemoveSource classified: 'constants - removed']
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/28/2020 14:24'
}
KhrProfile >> initialize [

	super initialize.
	definitions := OrderedCollection new
]

{
	#category : #testing,
	#timestamp : 'stlu 12/29/2020 19:18'
}
KhrProfile >> isShared [

	^ name isEmpty
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 14:29'
}
KhrProfile >> printOn: aStream [

	aStream nextPutAll: (name ifEmpty: 'SHARED')
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/28/2020 15:09'
}
KhrProfile >> registry: registry actionTag: actionTag [

	actionTag elementsDo: [:targetTag |
		targetTag tag ~= #type ifTrue: [
			definitions add: (KhrDefinition
								registry: registry
								profile: self
								actionTag: actionTag
								targetTag: targetTag)]]
]
