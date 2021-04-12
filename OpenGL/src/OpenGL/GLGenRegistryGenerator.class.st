Class {
	#name : #GLGenRegistryGenerator,
	#superclass : #GLGenGenerator,
	#instVars : [
		'targetClass'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'method sources',
	#timestamp : 'stlu 4/12/2021 13:59'
}
GLGenRegistryGenerator >> commandSource: aCommand [

	^ String streamContents: [:stream |
		self printCommandSignature: aCommand on: stream.
		stream cr; cr; tab.
		self printDefinitionPragmas: aCommand on: stream.
		stream cr; cr; tab.
		self printCommandPragmas: aCommand on: stream.
		stream cr; cr; tab.
		aCommand printFFIPragmaOn: stream.
		stream cr; tab.
		stream nextPutAll: '^ self externalCallFailed']
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:17'
}
GLGenRegistryGenerator >> enumSignature: anEnum [

	| name |
	name := anEnum name.
	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 4/12/2021 13:59'
}
GLGenRegistryGenerator >> enumSource: anEnum [

	^ String streamContents: [:stream |
		self printEnumSignature: anEnum on: stream.
		stream cr; cr; tab.
		self printDefinitionPragmas: anEnum on: stream.
		stream cr; cr; tab.
		self printEnumPragmas: anEnum on: stream.
		stream cr; tab.
		stream
			nextPutAll: '^ ';
			nextPutAll: anEnum name]
]

{
	#category : #generation,
	#timestamp : 'stlu 4/12/2021 17:20'
}
GLGenRegistryGenerator >> generate: aRegistry [

	self generateRegistry: aRegistry
]

{
	#category : #generation,
	#timestamp : 'stlu 4/12/2021 17:19'
}
GLGenRegistryGenerator >> generateCommand: aCommand [

	aCommand parameters size >= 16 ifTrue: [
		^ Transcript showln: aCommand name].
	(aCommand parameters anySatisfy: [:each | each type last = $]]) ifTrue: [
		^ Transcript showln: aCommand name].
	
	self
		compile: (self commandSource: aCommand)
		classified: #commands
		into: self targetClass.
]

{
	#category : #generation,
	#timestamp : 'stlu 4/12/2021 17:21'
}
GLGenRegistryGenerator >> generateCommands: aRegistry [

	'Compile commands'
		displayProgressFrom: 0 to: aRegistry commands size
		during: [:bar |
			aRegistry commands asArray withIndexDo: [:each :i |
				self generateCommand: each.
				bar value: i]].
]

{
	#category : #generation,
	#timestamp : 'stlu 4/12/2021 17:19'
}
GLGenRegistryGenerator >> generateEnum: anEnum [

	self
		compile: (self enumSource: anEnum)
		classified: #'enums'
		into: self targetClass
]

{
	#category : #generation,
	#timestamp : 'stlu 4/12/2021 17:21'
}
GLGenRegistryGenerator >> generateEnums: aRegistry [

	'Compile enums'
		displayProgressFrom: 0 to: aRegistry enums size
		during: [:bar |
			aRegistry enums asArray withIndexDo: [:each :i |
				self generateEnum: each.
				bar value: i]].
]

{
	#category : #generation,
	#timestamp : 'stlu 4/12/2021 17:42'
}
GLGenRegistryGenerator >> generateRegistry: aRegistry [

	self generateCommands: aRegistry.
	self generateEnums: aRegistry.
	self removeNonGeneratedMethodsIn: self targetClass.
]

{
	#category : #initialization,
	#timestamp : 'stlu 4/12/2021 18:17'
}
GLGenRegistryGenerator >> initialize [

	super initialize.
	targetClass := self environment at: #GLRegistry ifAbsent: []
]

{
	#category : #'method sources',
	#timestamp : 'stlu 4/6/2021 09:38'
}
GLGenRegistryGenerator >> printCommandPragmas: aCommand on: aStream [

	aStream
		nextPutAll: '<glCommand: ';
		store: aCommand name asSymbol;
		nextPut: $>.
	
	aStream
		cr;
		tab;
		nextPutAll: '<glReturn: ';
		store: aCommand returnType asString.
	aCommand returnGroup ifNotNil: [:group |
		aStream
			nextPutAll: ' group: ';
			store: group asSymbol].
	aStream nextPut: $>.
	
	aCommand parameters ifNotEmpty: [
		aStream
			cr;
			tab].
	aCommand parameters
		do: [:param |
			aStream
				nextPutAll: '<glArg: ';
				store: param name asString;
				nextPutAll: ' type: ';
				store: param type asString.
			param group ifNotNil: [:group |
				aStream
					nextPutAll: ' group: ';
					store: group asSymbol].
			param length ifNotNil: [:length |
				aStream
					nextPutAll: ' size: ';
					store: length].
			aStream nextPut: $>]
		separatedBy: [
			aStream
				cr;
				tab]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 15:07'
}
GLGenRegistryGenerator >> printCommandSignature: aCommand on: aStream [

	| selector firstLowerIndex lowerUpTo |
	selector := aCommand name allButFirst: 2. "remove 'gl' prefix"
	firstLowerIndex := selector findFirst: [:each | each isLowercase].
	lowerUpTo := firstLowerIndex >= 3
					ifTrue: [firstLowerIndex - 2]
					ifFalse: [
						firstLowerIndex <= 0
							ifTrue: [selector size + 1]
							ifFalse: [firstLowerIndex - 1]].
	
	aStream
		nextPutAll: (selector copyFrom: 1 to: lowerUpTo) translateToLowercase;
		next: selector size - lowerUpTo putAll: selector startingAt: lowerUpTo + 1.
	
	aCommand parameters ifNotEmpty: [aStream nextPutAll: ': '.].
	aCommand parameters
		do: [:param | aStream nextPutAll: param name]
		separatedBy: [aStream nextPutAll: ' with: '].
]

{
	#category : #'method sources',
	#timestamp : 'stlu 4/12/2021 13:56'
}
GLGenRegistryGenerator >> printDefinitionPragma: anArray on: aStream [

	| action api |
	api := anArray third.
	action := anArray second.
	aStream
		nextPutAll: '<glAPI: ';
		store: api asSymbol.
	anArray fourth ifNotNil: [:profile |
		aStream
			nextPutAll: ' profile: ';
			store: profile asSymbol].
	
	anArray first caseOf: {
		[#feature] -> [
			| version |
			version := anArray fifth.
			aStream
				nextPutAll: (action caseOf: {
								[#require] -> [' since: '].
								[#remove] -> [' until: ']});
				store: version asString].
		[#extension] -> [
			| extension |
			extension := anArray fifth.
			aStream
				nextPutAll: ' extension: ';
				store: extension asSymbol]}.
	
	aStream nextPut: $>.
]

{
	#category : #'method sources',
	#timestamp : 'stlu 4/12/2021 13:58'
}
GLGenRegistryGenerator >> printDefinitionPragmas: aRegistryObject on: aStream [

	aRegistryObject definitions
		do: [:definition | self printDefinitionPragma: definition on: aStream]
		separatedBy: [aStream cr; tab]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 4/7/2021 13:23'
}
GLGenRegistryGenerator >> printEnumPragmas: anEnum on: aStream [

	aStream
		nextPutAll: '<glEnum: ';
		store: anEnum name asSymbol;
		nextPut: $>.
	
	aStream
		cr; tab;
		nextPutAll: '<glValue: ';
		nextPutAll: anEnum valueString;
		nextPut: $>.
	
	anEnum groups ifNotEmpty: [:groups |
		| groupArray |
		groupArray := groups collect: [:group | group asSymbol] as: Array.
		groupArray sort.
		aStream
			cr; tab;
			nextPutAll: '<glGroups: ';
			store: groupArray;
			nextPut: $>].
	
	self flag: #todo. "additional newline"
	
	anEnum vendor ifNotNil: [:vendor |
		aStream
			cr; tab;
			nextPutAll: '<glVendor: ';
			store: vendor asSymbol;
			nextPut: $>].
		
	anEnum suffix ifNotNil: [:suffix |
		aStream
			cr; tab;
			nextPutAll: '<glSuffix: ';
			store: suffix asSymbol;
			nextPut: $>].
	
	anEnum isBitmask ifTrue: [
		aStream
			cr; tab;
			nextPutAll: '<glBitmask>'].
]

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 13:40'
}
GLGenRegistryGenerator >> printEnumSignature: anEnum on: aStream [

	aStream nextPutAll: (self enumSignature: anEnum)
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/12/2021 18:16'
}
GLGenRegistryGenerator >> targetClass [

	^ targetClass
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/12/2021 18:16'
}
GLGenRegistryGenerator >> targetClass: anObject [

	targetClass := anObject
]
