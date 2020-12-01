Class {
	#name : #GLGenCommand,
	#superclass : #GLGenObject,
	#instVars : [
		'parameters',
		'returnType'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
GLGenCommand class >> registry: registry tag: commandTag [

	^ self new
		registry: registry tag: commandTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenCommand >> addParameter: param [

	parameters add: param
]

{
	#category : #initialization,
	#timestamp : ''
}
GLGenCommand >> initialize [

	super initialize.
	parameters := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenCommand >> parameters [

	^ parameters
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> printFFIPragmaOn: aStream [

	aStream
		nextPutAll: '<apicall: ';
		nextPutAll: returnType;
		nextPutAll: ' ''';
		nextPutAll: name;
		nextPutAll: ''' ('.
	
	parameters
		do: [:param | aStream nextPutAll: param type]
		separatedBy: [aStream space].
	
	aStream nextPutAll: ')>'
]

{
	#category : #printing,
	#timestamp : ''
}
GLGenCommand >> printOn: aStream [

	aStream
		nextPutAll: returnType;
		space;
		nextPutAll: name;
		nextPut: $(.
	parameters
		do: [:param | param printOn: aStream]
		separatedBy: [aStream nextPutAll: ', '].
	aStream nextPut:$)
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> printRemoveSourceInProfile: aSymbol [

	^ String streamContents: [:stream |
		self printSignatureOn: stream.
		
		stream
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: 'profile == '.
		aSymbol storeOn: stream.
		stream
			nextPutAll: ' ifTrue: [^ self profileError].';
			cr; tab;
			nextPutAll: '^ super '.
		self printSignatureOn: stream]
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> printRequireSourceInProfile: aSymbol [

	^ String streamContents: [:stream |
		self printSignatureOn: stream.
		
		stream
			cr; tab;
			nextPutAll: '"Note: Only available in '.
		aSymbol storeOn: stream.
		stream
			nextPutAll: ' profile"';
			cr; tab.
		
		self printFFIPragmaOn: stream.
		
		stream
			cr; tab;
			nextPutAll: '^ self externalCallFailed']
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> printSharedRemoveSource [

	^ String streamContents: [:stream |
		self printSignatureOn: stream.
		
		stream
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab;
			nextPutAll: '^ self versionError']
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> printSharedRequireSource [

	^ String streamContents: [:stream |
		self printSignatureOn: stream.
		
		stream
			cr; cr; tab;
			nextPutAll: '<generated>';
			cr; tab.
		
		self printFFIPragmaOn: stream.
		
		stream
			cr; tab;
			nextPutAll: '^ self externalCallFailed']
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> printSignatureOn: aStream [

	aStream nextPutAll: self selector.
	parameters ifNotEmpty: [aStream nextPutAll: ': '].
	parameters
		do: [:param | aStream nextPutAll: param name]
		separatedBy: [aStream nextPutAll: ' with: ']
]

{
	#category : #initialization,
	#timestamp : ''
}
GLGenCommand >> registry: registry tag: commandTag [

	| protoTag |
	protoTag := commandTag firstTagNamed: #proto.
	name := (protoTag firstTagNamed: #name) contentString.
	returnType := GLGenParameter getType: protoTag.
	
	commandTag tagsNamed: #param do: [:paramTag |
		GLGenParameter registry: registry command: self tag: paramTag].
	registry addCommand: self
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenCommand >> returnType [

	^ returnType
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenCommand >> selector [
	"remove gl* prefix"
	| selector |
	selector := name allButFirst: 2.
	selector second isLowercase ifTrue: [
		selector at: 1 put: selector first asLowercase].
	^ selector
]
