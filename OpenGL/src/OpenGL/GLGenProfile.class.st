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
	#timestamp : ''
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
	#timestamp : ''
}
GLGenProfile >> feature [

	^ feature
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenProfile >> feature: anObject [

	feature := anObject
]

{
	#category : #generation,
	#timestamp : ''
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
	#timestamp : ''
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
	#timestamp : ''
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
	#timestamp : ''
}
GLGenProfile >> printOn: aStream [

	aStream nextPutAll: (name ifEmpty: 'SHARED')
]

{
	#category : #initialization,
	#timestamp : ''
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
	#timestamp : ''
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
	#timestamp : ''
}
GLGenProfile >> removedCommands [

	^ removedCommands
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenProfile >> removedEnums [

	^ removedEnums
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenProfile >> requiredCommands [

	^ requiredCommands
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenProfile >> requiredEnums [

	^ requiredEnums
]
