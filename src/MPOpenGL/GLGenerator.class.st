"
I generate Smalltalk classes to interface with OpenGL via FFI.
To do so, I require an XML based on the Khronos XML API Registry schema.

Available XML:
	- [gl.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml)
	- [glx.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/glx.xml)
	- [wgl.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/wgl.xml)
	- [egl.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/egl.xml)
Notice that only `gl.xml` is actually actively supported.

To re-generate the interface do the following:

```smalltalk
""Drop XML file into squeak window""
""Open inspector""
(GLGenerator xml: self) generateApi: 'GL'
```
"
Class {
	#name : #GLGenerator,
	#superclass : #Object,
	#instVars : [
		'registry',
		'commandTags',
		'definedCommands',
		'enumTags',
		'definedEnums',
		'currentFeatureClass',
		'api',
		'featureTags'
	],
	#category : #'MPOpenGL-Generation'
}

{ #category : #'instance creation' }
GLGenerator class >> fromFile: filePath [
	"xml file can be downloaded from https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml"
	^ self xml: (XMLDOMParser parseDocumentFrom: filePath asURI contentStream)
]

{ #category : #'instance creation' }
GLGenerator class >> generate: xml api: aString [

	^ (self xml: xml)
		generateApi: aString;
		yourself
]

{ #category : #'instance creation' }
GLGenerator class >> xml: anXMLDocument [

	^ self new
		initializeWithXML: anXMLDocument;
		yourself
]

{ #category : #helpers }
GLGenerator >> api: aString featuresDo: aBlock [

	featureTags
		at: aString
		ifPresent: [:features | features do: aBlock]
		ifAbsent: [self error: 'No such api in the provided xml']
]

{ #category : #accessing }
GLGenerator >> availableApis [

	^ featureTags keys
]

{ #category : #accessing }
GLGenerator >> availableProfiles: api [
	"compatibility core"
	| profiles |
	profiles := Set new.
	self api: api featuresDo: [:feature |
		feature elementsDo: [:elem |
			(elem attributeAt: #profile) ifNotNil: [:profile |
				profiles add: profile]]].
	^ profiles asArray
]

{ #category : #accessing }
GLGenerator >> classNamePrefix [

	^ api asUppercase
]

{ #category : #'constants pool' }
GLGenerator >> compileConstantsPoolAccessorMethods [

	definedEnums do: [:name |
		]
]

{ #category : #'code generation' }
GLGenerator >> compileVersionMethods: aVersion [

	| majorMinor |
	majorMinor := aVersion subStrings: '.'.
	currentFeatureClass compile: 'majorVersion

	^ ', majorMinor first classified: 'version'.
	currentFeatureClass compile: 'minorVersion

	^ ', majorMinor second classified: 'version'.

]

{ #category : #helpers }
GLGenerator >> convertEnumValue: aString [

	^ (aString beginsWith: '0x')
		ifTrue: [	(Number
					readFrom: (ReadStream on: aString from: 3 to: aString size)
					base: 16) storeStringBase: 16]
		ifFalse: [aString]
]

{ #category : #features }
GLGenerator >> feature: featureTag [

	currentFeatureClass := self generateFeatureClass: featureTag.
	self compileVersionMethods: (featureTag attributeAt: #number).
	
	featureTag elementsDo: [:elem |
		(self isActiveProfile: (elem attributeAt: #profile)) ifTrue: [
			elem tag = #require ifTrue: [self require: elem].
			elem tag = #remove ifTrue: [self remove: elem]]]
]

{ #category : #initialization }
GLGenerator >> gatherAllCommands [

	commandTags := Dictionary new.
	registry tagsNamed: #commands do: [:commandsTag |
		commandsTag tagsNamed: #command do: [:commandTag |
			| protoTag name |
			protoTag := commandTag firstTagNamed: #proto.
			name := (protoTag firstTagNamed: #name) contentString.
			commandTags at: name put: commandTag]]
]

{ #category : #initialization }
GLGenerator >> gatherAllEnums [

	enumTags := Dictionary new.
	registry tagsNamed: #enums do: [:enumsTag |
		enumsTag tagsNamed: #enum do: [:enumTag |
			| name |
			name := enumTag attributeAt: #name.
			enumTags at: name put: enumTag]]
]

{ #category : #initialization }
GLGenerator >> gatherAllFeatures [

	featureTags := Dictionary new.
	registry tagsNamed: #feature do: [:feature |
		featureTags
			at: (feature attributeAt: #api) asUppercase
			ifPresent: [:features | features add: feature]
			ifAbsentPut: [OrderedCollection with: feature]]
]

{ #category : #public }
GLGenerator >> generateApi: aString [

	api := aString asUppercase.
	self removeOldFeatureClasses.
	currentFeatureClass := self rootFeatureClass.
	definedEnums := Set new.
	definedCommands := Set new.

	self api: api featuresDo: [:feature | self feature: feature].
	
	self generateConstantsPool
]

{ #category : #'code generation' }
GLGenerator >> generateCommandDeprecationMethod: commandTag [

	| name params protoTag |
	protoTag := commandTag firstTagNamed: #proto.
	name := (protoTag firstTagNamed: #name) contentString.
	
	params := Array streamContents: [:stream |
		commandTag tagsNamed: #param do: [:param |
			stream nextPut: param]].
	
	^ String streamContents: [:stream |
		stream nextPutAll: name.
		
		params ifNotEmpty: [stream nextPutAll: ': '].
		params
			do: [:param | stream nextPutAll: ((param firstTagNamed: #name ) contentString)]
			separatedBy: [stream nextPutAll: ' with: '].
		
		stream
			cr; cr; tab;
			nextPutAll: 'self shouldNotImplement']
]

{ #category : #'code generation' }
GLGenerator >> generateCommandMethod: commandTag [

	| name params protoTag |
	protoTag := commandTag firstTagNamed: #proto.
	name := (protoTag firstTagNamed: #name) contentString.
	
	params := Array streamContents: [:stream |
		commandTag tagsNamed: #param do: [:param |
			stream nextPut: param]].
	
	^ String streamContents: [:stream |
		stream nextPutAll: name.
		
		params ifNotEmpty: [stream nextPutAll: ': '].
		params
			do: [:param | stream nextPutAll: ((param firstTagNamed: #name ) contentString)]
			separatedBy: [stream nextPutAll: ' with: '].
		
		stream
			cr; cr; tab;
			nextPutAll: '<apicall: ';
			nextPutAll: (self paramType: protoTag);
			nextPutAll: ' ''';
			nextPutAll: name;
			nextPutAll:  ''' ('.
		
		params
			do: [ :param | stream nextPutAll: (self paramType: param)]
			separatedBy: [stream space].
		
		stream
			nextPutAll: ')>';
			cr; tab;
			nextPutAll: '^ self externalCallFailed']
]

{ #category : #'constants pool' }
GLGenerator >> generateConstantMethod: name value: valueString [

	^ String streamContents: [:stream |
		stream
			nextPutAll: name;
			cr; cr; tab;
			nextPut: $^;
			space;
			nextPutAll: valueString]
]

{ #category : #'constants pool' }
GLGenerator >> generateConstantsPool [

	| pool |
	pool := self generateConstantsPoolClass.
	pool theMetaClass
		compile: self generateConstantsPoolIntializeMethod
		classified: 'initialization'.
	pool initialize.
	definedEnums do: [:name |
		pool theMetaClass
			compile: (self generateConstantMethod: name value: name)
			classified: 'accessing']
]

{ #category : #'constants pool' }
GLGenerator >> generateConstantsPoolClass [

	| classVarNames className |
	className := (self classNamePrefix , 'Constants') asSymbol.
	classVarNames := String streamContents: [:stream |
		definedEnums sorted
			do: [:enum | stream nextPutAll: enum]
			separatedBy: [stream space]].
	^ SharedPool
		subclass: className
		instanceVariableNames: ''
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: 'MPOpenGL-Constants'
]

{ #category : #'constants pool' }
GLGenerator >> generateConstantsPoolIntializeMethod [

	| needsSpacing |
	needsSpacing := true.
	^ String streamContents: [:stream |
		stream nextPutAll: 'initialize'.
		
		registry tagsNamed: #enums do: [:enumsTag |
			needsSpacing ifTrue: [
				stream cr.
				needsSpacing := false].
			enumsTag tagsNamed: #enum do: [:enumTag |
				| name value |
				name := enumTag attributeAt: #name.
				(definedEnums includes: name) ifTrue: [
					needsSpacing := true.
					value := self convertEnumValue: (enumTag attributeAt: #value).
					stream
						cr; tab;
						nextPutAll: name;
						nextPutAll: ' := ';
						nextPutAll: value;
						nextPut: $.]]]]
]

{ #category : #'constants pool' }
GLGenerator >> generateEnumMethod: enumTag [

	| name value |
	name := enumTag attributeAt: #name.
	
	value := self convertEnumValue: (enumTag attributeAt: #value).
	
	^ String streamContents: [:stream |
		stream
			nextPutAll: name;
			cr; cr; tab;
			nextPut: $^;
			space;
			nextPutAll: value]
]

{ #category : #'code generation' }
GLGenerator >> generateFeatureClass: featureTag [

	| className version |
	version := featureTag attributeAt: #number.
	className := (self classNamePrefix , (version copyReplaceAll: '.' with: '_')) asSymbol.
	^ (self environment classNamed: className)
		ifNil: [
			currentFeatureClass
				subclass: className
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: 'MPOpenGL-Versions']
		ifNotNil: [
			self error: 'Class with this name already exists']
]

{ #category : #initialization }
GLGenerator >> initializeWithXML: xml [

	registry := xml firstTagNamed: #registry.
	
	self gatherAllFeatures.
	self gatherAllEnums.
	self gatherAllCommands
]

{ #category : #testing }
GLGenerator >> isActiveProfile: stringOrNil [

	^ stringOrNil isNil or: [stringOrNil = 'core']
]

{ #category : #helpers }
GLGenerator >> paramType: anElement [

	| result |
	result := String streamContents: [:stream |
		anElement elementsAndContentsDo: [:part |
			part isText
				ifTrue: [stream nextPutAll: part string]
				ifFalse: [
					part tag = #ptype ifTrue: [
						stream nextPutAll: part contentString]]]].
	^ (result copyReplaceAll: 'const' with: '') copyReplaceAll: ' ' with: ''
]

{ #category : #features }
GLGenerator >> remove: removeTag [

	removeTag elements do: [:elem |
		| name |
		name := elem attributeAt: #name.
		elem tag caseOf: {
			[#command] -> [self removeCommand: name].
			[#enum] -> [self removeEnum: name].
			[#type] -> ["ignore"]}]
]

{ #category : #features }
GLGenerator >> removeCommand: name [

	| methodSource |
	definedCommands remove: name ifAbsent: [^ self].
	methodSource := self generateCommandDeprecationMethod: (commandTags at: name).
	currentFeatureClass
		compile: methodSource
		classified: 'commands - deprecated'
]

{ #category : #features }
GLGenerator >> removeEnum: name [

	"do nothing"
]

{ #category : #'code generation' }
GLGenerator >> removeOldFeatureClasses [

	self rootFeatureClass allSubclassesDo: [:cls | cls removeFromSystem]
]

{ #category : #features }
GLGenerator >> require: requireTag [

	requireTag elements do: [:elem |
		| name |
		name := elem attributeAt: #name.
		elem tag caseOf: {
			[#command] -> [self requireCommand: name].
			[#enum] -> [self requireEnum: name].
			[#type] -> ["ignore"]}]
]

{ #category : #features }
GLGenerator >> requireCommand: name [

	| methodSource |
	(definedCommands ifAbsentAdd: name) ifFalse: [^ self].
	methodSource := self generateCommandMethod: (commandTags at: name).
	currentFeatureClass
		compile: methodSource
		classified: 'commands'
]

{ #category : #features }
GLGenerator >> requireEnum: name [

	definedEnums add: name
]

{ #category : #accessing }
GLGenerator >> rootFeatureClass [

	^ self environment classNamed: api , 'Version'
]
