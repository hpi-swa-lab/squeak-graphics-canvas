"
I generate the FFI language bindings for OpenGL.
To do so, I require the API sepecification in the Khronos XML API Registry schema.
It can be found [here](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml).

To (re-)generate the interface, do the following:
```smalltalk
GLRegistry fromWeb generate.
```

The registry object is not modified to generate code and can hence be used multiple times to do so.
"
Class {
	#name : #KhrRegistry,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'commands',
		'enums',
		'enumGroups',
		'apis'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : 'stlu 11/6/2020 17:57'
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 10/31/2020 23:18'
}
KhrRegistry class >> fromFile: filePath [

	^ self fromXML: (XMLDOMParser parseDocumentFrom: filePath asURI contentStream)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 19:47'
}
KhrRegistry class >> fromTag: registryTag [

	^ self new
		tag: registryTag;
		yourself
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/6/2020 17:49'
}
KhrRegistry class >> fromUrl: urlString [

	| response |
	response := WebClient httpGet: urlString.
	response isSuccess ifFalse: [^ self error: 'Failed to fetch XML'].
	^ self fromXML: (XMLDOMParser parseDocumentFrom: response content readStream)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/6/2020 17:52'
}
KhrRegistry class >> fromWeb [

	^ self fromUrl: 'https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/gl.xml'
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 19:20'
}
KhrRegistry class >> fromXML: xml [

	^ self fromTag: (xml firstTagNamed: #registry)
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:04'
}
KhrRegistry >> acceptVisitor: aVisitor [

	^ aVisitor visitRegistry: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:20'
}
KhrRegistry >> addCommand: command [

	^ commands
		at: command name
		ifPresent: [:x | x]
		ifAbsentPut: [command]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:20'
}
KhrRegistry >> addEnum: enum [

	^ enums
		at: enum name
		ifPresent: [:x | x "there's exactly 1 Enum that's api-specific (GL_ACTIVE_PROGRAM_EXT)"]
		ifAbsentPut: [enum]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrRegistry >> apis [

	^ apis
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrRegistry >> commands [

	^ commands
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrRegistry >> enumGroups [

	^ enumGroups
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrRegistry >> enums [

	^ enums
]

{
	#category : #initialization,
	#timestamp : 'stlu 10/31/2020 23:59'
}
KhrRegistry >> initialize [

	super initialize.
	enums := Dictionary new: 7000.
	commands := Dictionary new: 4000.
	enumGroups := Dictionary new: 500.
	apis := Dictionary new
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/28/2020 13:01'
}
KhrRegistry >> tag: registryTag [

	name := 'gl.xml'.

	registryTag tagsNamed: #enums do: [:enumsTag |
		enumsTag tagsNamed: #enum do: [:enumTag |
			KhrEnum registry: self tag: enumTag]].
	
	registryTag tagsNamed: #commands do: [:commandsTag |
		commandsTag tagsNamed: #command do: [:commandTag |
			KhrCommand registry: self tag: commandTag]].
	
	registryTag tagsNamed: #feature do: [:featureTag |
		KhrFeature registry: self tag: featureTag]
]
