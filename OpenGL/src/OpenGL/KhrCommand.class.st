Class {
	#name : #KhrCommand,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'parameters',
		'returnType',
		'returnGroup'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 20:13'
}
KhrCommand class >> registry: registry tag: commandTag [

	^ self new
		registry: registry tag: commandTag;
		yourself
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:03'
}
KhrCommand >> acceptVisitor: aVisitor [

	^ aVisitor visitCommand: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 00:23'
}
KhrCommand >> addParameter: param [

	parameters add: param
]

{
	#category : #printing,
	#timestamp : 'stlu 12/28/2020 16:36'
}
KhrCommand >> ffiPragma [

	^ String streamContents: [:stream |
		self printFFIPragmaOn: stream]
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/1/2020 20:27'
}
KhrCommand >> initialize [

	super initialize.
	parameters := OrderedCollection new
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrCommand >> isCommand [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:20'
}
KhrCommand >> parameters [

	^ parameters
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 19:53'
}
KhrCommand >> printFFIPragmaOn: aStream [

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
KhrCommand >> printOn: aStream [

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
	#category : #initialization,
	#timestamp : 'stlu 3/3/2021 13:12'
}
KhrCommand >> registry: registry tag: commandTag [

	| protoTag |
	protoTag := commandTag firstTagNamed: #proto.
	name := (protoTag firstTagNamed: #name) contentString.
	returnType := KhrParameter getType: protoTag.
	returnGroup := commandTag attributes at: #group ifAbsent: [].
	
	commandTag tagsNamed: #param do: [:paramTag |
		KhrParameter registry: registry command: self tag: paramTag].
	registry addCommand: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/3/2021 13:11'
}
KhrCommand >> returnGroup [

	^ returnGroup
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:20'
}
KhrCommand >> returnType [

	^ returnType
]
