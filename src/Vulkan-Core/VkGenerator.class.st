Class {
	#name : #VkGenerator,
	#superclass : #Object,
	#instVars : [
		'registry',
		'bitmaskTypes',
		'externalTypes'
	],
	#category : #'Vulkan-Core'
}

{ #category : #'as yet unclassified' }
VkGenerator class >> fromFile: aFile [

	^ self new initializeWithXML: (XMLDOMParser parseDocumentFrom: aFile fullName asURI contentStream)
]

{ #category : #'as yet unclassified' }
VkGenerator >> commandDefinitionFor: aString [

	registry tagsNamed: #command do: [:command |
		(command attributeAt: #name) = aString ifTrue: [^ command]].
	^ self error: 'method definition not found'
]

{ #category : #'as yet unclassified' }
VkGenerator >> createCommandAlias: commandTag [

	^ self getAPIClass compile: (String streamContents: [:stream | | params |
		params := Array streamContents: [:strList |
			(self commandDefinitionFor: (commandTag attributeAt: #alias)) tagsNamed: #params childrenDo: [:child | strList nextPut: child]].
		stream
			nextPutAll: (self signatureStringFor: (commandTag attributeAt: #name) params: #());
			crtab;
			nextPutAll: '^ self ';
			nextPutAll: (self signatureStringFor: (commandTag attributeAt: #alias) params: #())])
]

{ #category : #'as yet unclassified' }
VkGenerator >> createCommandMethod: commandTag [

	| protoTag params string |
	
	(commandTag attributeAt: #alias) ifNotNil: [^ self createCommandAlias: commandTag].
	
	protoTag := commandTag firstTagNamed: #proto.
	params := Array streamContents: [:stream |
		commandTag tagsNamed: #param childrenDo: [:param | stream nextPut: param]].
	
	^ self getAPIClass compile: (String streamContents: [:stream | | name |
		name := (protoTag firstTagNamed: #name) contentString.
		stream nextPutAll: (self signatureStringFor: name params: params).
		
		stream
			cr;
			crtab;
			nextPutAll: '<apicall: ';
			nextPutAll: (self paramType: protoTag);
			nextPutAll: ' ''';
			nextPutAll: name;
			nextPutAll: ''' ('.
		params do: [:param | stream nextPutAll: (self paramType: param)] separatedBy: [stream space].
		stream
			nextPutAll: ')>';
			cr;
			tab;
			nextPutAll: '^ self externalCallFailed'])
]

{ #category : #'as yet unclassified' }
VkGenerator >> createCommands [

	registry
		tagsNamed: #commands
		do: [:commands |
			commands tagsNamed: #command do: [:command | self createCommandMethod: command]]
]

{ #category : #'as yet unclassified' }
VkGenerator >> createEnums [

	registry
		tagsNamed: #enums
		do: [:enums | | class |
			class := bitmaskTypes
				at: (enums attributeAt: #name)
				ifAbsent: [
					self createTypedef: (self enumNameFor: (enums attributeAt: #name)) type: 'long'].
			enums
				tagsNamed: #enum
				do: [:enum |
					class class compile: (String streamContents: [:stream |
						stream
							nextPutAll: (enum attributeAt: #name);
							cr;
							cr;
							tab;
							nextPutAll: '^ self on: ('.
						self printValueOf: enum on: stream.
						stream nextPut: $)])]]
]

{ #category : #'as yet unclassified' }
VkGenerator >> createExtension: aString [

	registry
		tagsNamed: #extension
		do: [:extension |
			(extension attributeAt: #name) = aString ifTrue: [self createExtensionFrom: extension]]
]

{ #category : #'as yet unclassified' }
VkGenerator >> createExtensionFrom: aTag [

	aTag
		tagsNamed: #enum
		do: [:enum | | value |
			SBLabel text: [
				'TODO: we only consider extending props, not new ones'].
			(enum attributeAt: #extends) ifNotNil: [ | className |
				value := (enum attributeAt: #offset)
					ifNotNil: [:offset | | extBase extBlockSize extnumber |
						SBLabel text: ['not currently handled'].
						extBase := 1000000000.
						extBlockSize := 1000.
						extnumber := enum attributeAt: #extnumber ifAbsent: [(aTag attributeAt: #number) asInteger].
						extBase + (((extnumber - 1) * extBlockSize) + offset) * ((enum attributeAt: #dir) ifNotNil: [-1] ifNil: [1])]
					ifNil: [enum attributeAt: #value].
				
				className := (enum attributeAt: #extends) asSymbol.
				(Smalltalk at: (bitmaskTypes at: className ifPresent: #name ifAbsent: [className])) class compile: (String streamContents: [:stream |
					stream
						nextPutAll: (enum attributeAt: #name);
						cr;
						cr;
						tab;
						nextPutAll: '^ self on: (';
						nextPutAll: value asString;
						nextPut: $)])]]
]

{ #category : #'as yet unclassified' }
VkGenerator >> createExternalStructure: aClass from: type [

	| class |
	self assert: ((type attributeAt: #name) occurrencesOf: Character space) = 0.
	class := aClass
		subclass: (type attributeAt: #name) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Vulkan-Generated'.
	class class compile: (String streamContents: [:stream |
		stream
			nextPutAll: 'fields';
			cr;
			cr;
			tab;
			nextPutAll: '^ #(';
			crtab.
		type
			tagsNamed: #member
			do: [:member |
				self assert: (member elementAt: #name) contents size = 1.
				self assert: (member elementAt: #type) contents size = 1.
				
				stream
					tab;
					nextPut: $(;
					nextPutAll: (member elementAt: #name) contentString;
					space;
					nextPut: $';
					nextPutAll: (self typeNameFrom: member);
					nextPut: $';
					nextPut: $);
					crtab].
		stream nextPutAll: ')'])
]

{ #category : #'as yet unclassified' }
VkGenerator >> createStruct: aType [

	self createExternalStructure: ExternalStructure from: aType
]

{ #category : #'as yet unclassified' }
VkGenerator >> createTypeFor: type [

	(type attributeAt: #category) = #handle ifTrue: [
		SBLabel text: ['not sure if void* or intptr_t'].
		^ self createTypedef: type type: 'intptr_t'].
	
	(type attributeAt: #category) = #bitmask ifTrue: [ | class |
		^ (type attributeAt: #alias)
			ifNotNil: [:alias | self createTypedef: type type: alias]
			ifNil: [
				class := self createTypedef: type type: 'long'.
				(type attributeAt: #requires) ifNotNil: [:req | bitmaskTypes at: req put: class]]].
	
	(type attributeAt: #category) = #funcpointer ifTrue: [^ self createTypedef: type type: 'void*'].
	
	((type attributeAt: #category) = #enum and: [(type attributeAt: #alias) notNil]) ifTrue: [
		^ self createTypedef: type type: (self typeName: (type attributeAt: #alias))].
	
	(type attributeAt: #category) = #basetype ifTrue: [
		(type contentString beginsWith: 'typedef') ifTrue: [^ self createTypedef: type].
		(type contentString beginsWith: 'struct') ifTrue: [
			^ externalTypes add: (type elementAt: #name) contentString]].
	
	(type attributeAt: #category) = #struct ifTrue: [^ self createStruct: type].
	
	(type attributeAt: #category) = #union ifTrue: [^ self createUnion: type].
	
	(type attributeAt: #requires) ifNotNil: [:req |
		SBLabel text: [
			'vk_platform defines are just our standard types like uint64_t'].
		^ req ~= 'vk_platform' ifTrue: [externalTypes add: (type attributeAt: #name)]]
]

{ #category : #'as yet unclassified' }
VkGenerator >> createTypedef: aType [

	self createTypedef: aType type: (aType elementAt: #type) contentString
]

{ #category : #'as yet unclassified' }
VkGenerator >> createTypedef: aType type: aString [

	| class name |
	name := aType isString ifTrue: [aType] ifFalse: [(aType elementAt: #name) ifNotNil: #contentString ifNil: [aType attributeAt: #name]].
	self assert: name notNil.
	
	class := ExternalTypeAlias
		subclass: name asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Vulkan-Generated'.
	class class compile: 'originalTypeName

    ^ ''', (aString, '''').
	^ class
]

{ #category : #'as yet unclassified' }
VkGenerator >> createTypes [

	registry tagsNamed: #types do: [:types |
		types tagsNamed: #type do: [:type | self createTypeFor: type]]
]

{ #category : #'as yet unclassified' }
VkGenerator >> createUnion: type [

	self createExternalStructure: ExternalUnion from: type
]

{ #category : #'as yet unclassified' }
VkGenerator >> enumNameFor: name [

	name = 'API Constants' ifTrue: [^ 'VkAPIConstants'].
	^ name
]

{ #category : #'as yet unclassified' }
VkGenerator >> formatNumber: aString [

	| string |
	SBExample self: [VkGenerator new] args: [{'(~0U)'}] label: 'example'.
	string := aString.
	#('~0ULL' '~0U')
		with: #(18446744073709551615 4294967295)
		do: [:symbol :value |
			string := string copyReplaceAll: symbol with: '16r', (value printStringBase: 16)].
	^ string
]

{ #category : #'as yet unclassified' }
VkGenerator >> getAPIClass [

	^ Smalltalk
		at: #VkAPI
		ifAbsent: [ | lib |
			lib := ExternalLibrary
				subclass: #VkAPI
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: 'Vulkan-Generated'.
			lib class compile: 'moduleName

	^ ''libvulkan'''.
			lib]
]

{ #category : #'as yet unclassified' }
VkGenerator >> initializeWithXML: anXML [

	registry := anXML firstTagNamed: #registry.
	
	SBLabel text: [
		'a number of types has a *Bits and a *Flag type alias, we only want one of those'].
	bitmaskTypes := Dictionary new.
	
	SBLabel text: [
		'some types can only be used as void* because they are defined externally'].
	externalTypes := OrderedCollection new.
	
	self patchCAMetalLayer.
	self createTypes.
	self createEnums.
	self createCommands.
	self createExtension: 'VK_EXT_debug_utils'.
	self createExtension: 'VK_KHR_swapchain'
]

{ #category : #'as yet unclassified' }
VkGenerator >> paramType: anElement [

	| result |
	result := String streamContents: [:stream |
		anElement elementsAndContentsDo: [:part |
			part isText
				ifTrue: [stream nextPutAll: part string]
				ifFalse: [
					part tag = #type ifTrue: [stream nextPutAll: part contentString]]]].
	^ ((result copyReplaceAll: 'const' with: '') copyReplaceAll: ' ' with: '') copyWithRegex: '\[.+\]' matchesReplacedWith: '*'
]

{ #category : #'as yet unclassified' }
VkGenerator >> patchCAMetalLayer [

	| class |
	class := ExternalTypeAlias
		subclass: #CAMetalLayer
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Vulkan-Generated'.
	class compile: 'originalTypeName

    ^ ''void*'''
]

{ #category : #'as yet unclassified' }
VkGenerator >> printValueOf: enum on: stream [

	(enum attributeAt: #alias) ifNotNil: [:alias |
		^ stream
			nextPutAll: 'self ';
			nextPutAll: alias].
	(enum attributeAt: #bitpos) ifNotNil: [:position |
		^ stream
			nextPutAll: '1 bitShift: ';
			nextPutAll: position].
	self assert: (enum attributeAt: #value) notNil.
	stream nextPutAll: (self formatNumber: (enum attributeAt: #value))
]

{ #category : #'as yet unclassified' }
VkGenerator >> signatureStringFor: aString params: aCollection [

	^ String streamContents: [:stream |
		stream nextPutAll: aString.
		aCollection ifNotEmpty: [stream nextPutAll: ': '].
		aCollection
			do: [:param |
				stream nextPutAll: (param firstTagNamed: #name) contentString]
			separatedBy: [stream nextPutAll: ' with: ']]
]

{ #category : #'as yet unclassified' }
VkGenerator >> typeName: aString [

	| typeName |
	typeName := aString.
	bitmaskTypes
		at: typeName
		ifPresent: [:actualType |
			SBLabel text: ['the *Bits and *Flags enums are both used?'].
			typeName := actualType name].
	(externalTypes includes: typeName) ifTrue: [typeName := 'void'].
	^ typeName
]

{ #category : #'as yet unclassified' }
VkGenerator >> typeName: aString from: member [

	| typeName |
	typeName := aString.
	bitmaskTypes
		at: typeName
		ifPresent: [:actualType |
			SBLabel text: ['the *Bits and *Flags enums are both used?'].
			typeName := actualType name].
	(externalTypes includes: typeName) ifTrue: [typeName := 'void'].
	(member notNil and: [
		member contents anySatisfy: [:t | t string includes: $*]]) ifTrue: [typeName := typeName, '*'].
	(member notNil and: [
		member contents anySatisfy: [:t | t string includes: $[]]) ifTrue: [self halt].
	^ typeName
]

{ #category : #'as yet unclassified' }
VkGenerator >> typeNameFrom: member [

	^ (((String streamContents: [:stream |
		member elementsAndContentsDo: [:el |
			el isText
				ifTrue: [
					stream nextPutAll: ((el string
						copyReplaceAll: 'const' with: '')
						copyReplaceAll: 'struct' with: '')]
				ifFalse: [
					el tag caseOf: {
						[#type] -> [stream nextPutAll: (self typeName: el contentString)].
						[#enum] -> [stream print: ((Smalltalk at: #VkAPIConstants) perform: (el contentString asSymbol)) value].
						[#comment] -> [].
						[#name] -> [].
					}]]])
						copyReplaceAll: ' ' with: '')
						copyReplaceAll: '**' with: '*')
						" some structs define bitfield sizes, which are potentially ignored anyways in the C impl? "
						copyWithRegex: '\:\d+' matchesReplacedWith: ''
]
