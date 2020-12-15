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
	#timestamp : 'stlu 11/1/2020 20:13'
}
GLGenCommand class >> registry: registry tag: commandTag [

	^ self new
		registry: registry tag: commandTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 00:23'
}
GLGenCommand >> addParameter: param [

	parameters add: param
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/1/2020 20:27'
}
GLGenCommand >> initialize [

	super initialize.
	parameters := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:20'
}
GLGenCommand >> parameters [

	^ parameters
]

{
	#category : #generation,
	#timestamp : 'stlu 11/2/2020 19:53'
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
	#timestamp : 'stlu 11/1/2020 20:56'
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
	#timestamp : 'stlu 11/3/2020 13:04'
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
	#timestamp : 'stlu 11/3/2020 13:10'
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
	#timestamp : 'stlu 11/3/2020 12:58'
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
	#timestamp : 'stlu 11/3/2020 12:58'
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
	#timestamp : 'stlu 11/2/2020 19:39'
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
	#timestamp : 'stlu 11/1/2020 21:30'
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
	#timestamp : 'stlu 10/31/2020 22:20'
}
GLGenCommand >> returnType [

	^ returnType
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 13:59'
}
GLGenCommand >> selector [
	"remove gl* prefix"
	| selector |
	selector := name allButFirst: 2.
	selector second isLowercase ifTrue: [
		selector at: 1 put: selector first asLowercase].
	^ selector
]
