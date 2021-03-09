Class {
	#name : #KhrOpenGLRegistryGenerator,
	#superclass : #KhrRegistryVisitor,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 15:12'
}
KhrOpenGLRegistryGenerator >> commandSource: aCommand [

	^ String streamContents: [:stream |
		self printCommandSignature: aCommand on: stream.
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
KhrOpenGLRegistryGenerator >> enumSignature: anEnum [

	| name |
	name := anEnum name.
	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 13:51'
}
KhrOpenGLRegistryGenerator >> enumSource: anEnum [

	^ String streamContents: [:stream |
		self printEnumSignature: anEnum on: stream.
		stream cr; cr; tab.
		self printEnumPragmas: anEnum on: stream.
		stream cr; tab.
		stream
			nextPutAll: '^ ';
			nextPutAll: anEnum name]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 15:14'
}
KhrOpenGLRegistryGenerator >> printCommandPragmas: aCommand on: aStream [

	aStream
		nextPutAll: '<command: ';
		store: aCommand name asSymbol;
		nextPut: $>.
	
	aStream
		cr; tab;
		nextPutAll: '<return: ';
		store: aCommand returnType asString.
	aCommand returnGroup ifNotNil: [:group |
		aStream
			nextPutAll: ' group: ';
			store: group asSymbol].
	aStream nextPut: $>.
	
	aCommand parameters ifNotEmpty: [aStream cr; tab].
	aCommand parameters
		do: [:param |
			aStream
				nextPutAll: '<arg: ';
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
		separatedBy: [aStream cr; tab].
]

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 15:07'
}
KhrOpenGLRegistryGenerator >> printCommandSignature: aCommand on: aStream [

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
	#timestamp : 'stlu 3/6/2021 10:34'
}
KhrOpenGLRegistryGenerator >> printEnumPragmas: anEnum on: aStream [

	aStream
		nextPutAll: '<enum: ';
		store: anEnum name asSymbol;
		nextPut: $>.
	
	aStream
		cr; tab;
		nextPutAll: '<value: ';
		nextPutAll: anEnum valueString;
		nextPut: $>.
	
	anEnum groups ifNotEmpty: [:groups |
		| groupArray |
		groupArray := groups collect: [:group | group asSymbol] as: Array.
		groupArray sort.
		aStream
			cr; tab;
			nextPutAll: '<groups: ';
			store: groupArray;
			nextPut: $>].
	
	self flag: #todo. "additional newline"
	
	anEnum vendor ifNotNil: [:vendor |
		aStream
			cr; tab;
			nextPutAll: '<vendor: ';
			store: vendor asSymbol;
			nextPut: $>].
		
	anEnum suffix ifNotNil: [:suffix |
		aStream
			cr; tab;
			nextPutAll: '<suffix: ';
			store: suffix asSymbol;
			nextPut: $>].
	
	anEnum isBitmask ifTrue: [
		aStream
			cr; tab;
			nextPutAll: '<bitmask>'].
]

{
	#category : #'method sources',
	#timestamp : 'stlu 3/3/2021 13:40'
}
KhrOpenGLRegistryGenerator >> printEnumSignature: anEnum on: aStream [

	aStream nextPutAll: (self enumSignature: anEnum)
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/3/2021 12:57'
}
KhrOpenGLRegistryGenerator >> visitCommand: aCommand [

	| source category |
	aCommand parameters size >= 16 ifTrue: [^ Transcript showln: aCommand name].
	(aCommand parameters anySatisfy: [:each | each type last = $]]) ifTrue: [^ Transcript showln: aCommand name].
	
	source := self commandSource: aCommand.
	category := #'commands'.
	GLRegistry compile: source classified: category.
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/5/2021 13:32'
}
KhrOpenGLRegistryGenerator >> visitCommands: aRegistry [

	'Compile commands'
		displayProgressFrom: 0 to: aRegistry commands size
		during: [:bar |
			aRegistry commands asArray withIndexDo: [:each :i |
				self visit: each.
				bar value: i]].
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/3/2021 12:02'
}
KhrOpenGLRegistryGenerator >> visitEnum: anEnum [

	| source |
	source := self enumSource: anEnum.
	GLRegistry compile: source classified: #'enums'
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/5/2021 13:33'
}
KhrOpenGLRegistryGenerator >> visitEnums: aRegistry [

	'Compile enums'
		displayProgressFrom: 0 to: aRegistry enums size
		during: [:bar |
			aRegistry enums asArray withIndexDo: [:each :i |
				self visit: each.
				bar value: i]].
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/5/2021 13:32'
}
KhrOpenGLRegistryGenerator >> visitRegistry: registry [

	self visitCommands: registry.
	self visitEnums: registry.
]
