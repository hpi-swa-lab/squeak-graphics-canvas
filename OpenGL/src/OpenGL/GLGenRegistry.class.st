Class {
	#name : #GLGenRegistry,
	#superclass : #GLGenObject,
	#instVars : [
		'commands',
		'enums',
		'enumGroups',
		'apis'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #'instance creation' }
GLGenRegistry class >> fromFile: filePath [

	^ self fromXML: (XMLDOMParser parseDocumentFrom: filePath asURI contentStream)
]

{ #category : #'instance creation' }
GLGenRegistry class >> fromTag: registryTag [

	^ self new
		tag: registryTag;
		yourself
]

{ #category : #'instance creation' }
GLGenRegistry class >> fromXML: xml [

	^ self fromTag: (xml firstTagNamed: #registry)
]

{ #category : #accessing }
GLGenRegistry >> addCommand: command [

	^ commands
		at: command name
		ifPresent: [:x | x]
		ifAbsentPut: [command]
]

{ #category : #accessing }
GLGenRegistry >> addEnum: enum [

	^ enums
		at: enum name
		ifPresent: [:x | x "there's exactly 1 Enum that's api-specific (GL_ACTIVE_PROGRAM_EXT)"]
		ifAbsentPut: [enum]
]

{ #category : #accessing }
GLGenRegistry >> apis [

	^ apis
]

{ #category : #accessing }
GLGenRegistry >> commands [

	^ commands
]

{ #category : #accessing }
GLGenRegistry >> enumGroups [

	^ enumGroups
]

{ #category : #accessing }
GLGenRegistry >> enums [

	^ enums
]

{ #category : #generation }
GLGenRegistry >> generate [

	self generateConstantsPool.
	apis do: [:api | api generate].
]

{ #category : #generation }
GLGenRegistry >> generateConstantsPool [

	| classVars |
	classVars := GLConstants classVarNames asSet.
	enums do: [:enum |
		(classVars includes: enum name) ifFalse: [
			GLConstants addClassVarName: enum name]]
]

{ #category : #initialization }
GLGenRegistry >> initialize [

	super initialize.
	enums := Dictionary new: 7000.
	commands := Dictionary new: 4000.
	enumGroups := Dictionary new: 500.
	apis := Dictionary new
]

{ #category : #initialization }
GLGenRegistry >> tag: registryTag [

	name := 'gl.xml'.

	registryTag tagsNamed: #enums do: [:enumsTag |
		enumsTag tagsNamed: #enum do: [:enumTag |
			GLGenEnum registry: self tag: enumTag]].
	
	registryTag tagsNamed: #commands do: [:commandsTag |
		commandsTag tagsNamed: #command do: [:commandTag |
			GLGenCommand registry: self tag: commandTag]].
	
	registryTag tagsNamed: #feature do: [:featureTag |
		GLGenFeature registry: self tag: featureTag]
]
