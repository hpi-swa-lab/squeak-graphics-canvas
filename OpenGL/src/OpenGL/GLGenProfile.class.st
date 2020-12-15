Class {
	#name : #GLGenProfile,
	#superclass : #GLGenObject,
	#instVars : [
		'feature',
		'requiredCommands',
		'requiredEnums',
		'removedCommands',
		'removedEnums'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/3/2020 14:24'
}
GLGenProfile class >> feature: feature name: aSymbol [

	^ feature profiles
		at: aSymbol
		ifAbsentPut: [
			self new
				feature: feature;
				name: aSymbol;
				yourself]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:56'
}
GLGenProfile >> feature [

	^ feature
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:56'
}
GLGenProfile >> feature: anObject [

	feature := anObject
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:27'
}
GLGenProfile >> generateIn: aClass [

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
GLGenProfile >> generateSharedIn: aClass [

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
	#timestamp : 'stlu 11/2/2020 13:39'
}
GLGenProfile >> initialize [

	super initialize.
	requiredEnums := OrderedCollection new.
	requiredCommands := OrderedCollection new.
	removedEnums := OrderedCollection new.
	removedCommands := OrderedCollection new
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 14:29'
}
GLGenProfile >> printOn: aStream [

	aStream nextPutAll: (name ifEmpty: 'SHARED')
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/2/2020 13:59'
}
GLGenProfile >> registry: registry removeTag: removeTag [

	removeTag tagsNamed: #enum do: [:removeEnumTag |
		| enum enumName |
		enumName := removeEnumTag attributes at: #name.
		enum := registry enums at: enumName.
		removedEnums add: enum].
	
	removeTag tagsNamed: #command do: [:removeCommandTag |
		| command commandName |
		commandName := removeCommandTag attributes at: #name.
		command := registry commands at: commandName.
		removedCommands add: command]
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/2/2020 13:55'
}
GLGenProfile >> registry: registry requireTag: requireTag [

	requireTag tagsNamed: #enum do: [:requiredEnumTag |
		| enum enumName |
		enumName := requiredEnumTag attributes at: #name.
		enum := registry enums at: enumName.
		requiredEnums add: enum].
	
	requireTag tagsNamed: #command do: [:requiredCommandTag |
		| command commandName |
		commandName := requiredCommandTag attributes at: #name.
		command := registry commands at: commandName.
		requiredCommands add: command]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:38'
}
GLGenProfile >> removedCommands [

	^ removedCommands
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:38'
}
GLGenProfile >> removedEnums [

	^ removedEnums
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:38'
}
GLGenProfile >> requiredCommands [

	^ requiredCommands
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:38'
}
GLGenProfile >> requiredEnums [

	^ requiredEnums
]
