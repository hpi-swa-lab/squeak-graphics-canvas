Class {
	#name : #SLGenerator,
	#superclass : #RBProgramNodeVisitor,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:16'
}
SLGenerator >> acceptAssignmentNode: anAssignmentNode [ 
	^ (self visitNode: anAssignmentNode variable), ' = ' , (self visitNode: anAssignmentNode value)
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:38'
}
SLGenerator >> acceptBlockNode: aBlockNode [ 
	^ '{', Character lf, (self visitNode: aBlockNode body), '}', Character lf
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:12'
}
SLGenerator >> acceptLiteralNode: aLiteralNode [
	^ aLiteralNode value asGLSLLiteral.
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:33'
}
SLGenerator >> acceptMessageNode: aMessageNode [ 
	^	String streamContents: [:stream |
		stream
			nextPutAll: (aMessageNode selector);
			nextPutAll: '(';
			nextPutAll: (self visitNode: aMessageNode receiver).
		aMessageNode arguments do: [:each |
			stream
				nextPutAll: ',';
				nextPutAll: (self visitNode: each)].
		stream nextPutAll: ')']
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:35'
}
SLGenerator >> acceptMethodNode: aMethodNode [ 
	self visitArguments: aMethodNode arguments.
	aMethodNode pragmas
		do: [ :each | self visitNode: each ].
	^ self visitNode: aMethodNode body
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:11'
}
SLGenerator >> acceptSequenceNode: aSequenceNode [ 
	self visitArguments: aSequenceNode temporaries.
	^	String streamContents: [:stream |
		aSequenceNode statements do: [:each |
		stream
			nextPutAll: (self visitNode: each);
			nextPutAll: ';';
			lf]]
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:37'
}
SLGenerator >> acceptVariableNode: aVariableNode [
	^ aVariableNode name.
]

{
	#category : #'initialize-release',
	#timestamp : 'zagto 11/24/2020 16:46'
}
SLGenerator >> initialize [
	super initialize.
	stream := WriteStream on: (String new: 42).
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 16:46'
}
SLGenerator >> result [
	^ stream contents
]
