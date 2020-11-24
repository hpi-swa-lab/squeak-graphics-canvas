Class {
	#name : #SLAnalyzer,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'argumentToInterface',
		'variableToInterface',
		'variableToType'
	],
	#classVars : [
		'InterfaceTypeMap'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 22:30'
}
SLAnalyzer >> acceptAssignmentNode: anAssignmentNode [
	| name |
	super acceptAssignmentNode: anAssignmentNode.
	
	name := anAssignmentNode variable name.
	self setVariable: name toType: (anAssignmentNode value propertyAt: #type)
	
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 22:31'
}
SLAnalyzer >> acceptBlockNode: aBlockNode [ 
	
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 18:01'
}
SLAnalyzer >> acceptLiteralNode: aLiteralNode [
	super acceptLiteralNode: aLiteralNode.
	aLiteralNode propertyAt: #type put: aLiteralNode value glslType
]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 18:55'
}
SLAnalyzer >> acceptMessageNode: aMessageNode [
	super acceptMessageNode: aMessageNode.

	
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
	#timestamp : 'zagto 11/24/2020 21:37'
}
SLAnalyzer >> acceptMethodNode: aMethodNode [
	|args selParts|
	args := aMethodNode arguments.
	selParts := aMethodNode selectorParts.
	
	argumentToInterface := Dictionary new. "#u -> #uniform"
	variableToInterface := Dictionary new. "#bloomBlur -> #uniform"
	variableToType := Dictionary new. "#bloomBlur -> GLTFloatVector3"
	
	argumentToInterface at: args first name put: 'out'.
	args allButFirst with: selParts allButFirst do: [:argNode :selPart || interface |
		interface := InterfaceTypeMap
			at: selPart value
			ifAbsent: [ self selectorPartError: selPart value ].
		argumentToInterface at: argNode name put: interface ].
	
	args do: [ :argNode || name interfaceObj |
		name := argNode name.
		interfaceObj :=  SLInterfaceObject new
			analyzer: self;
			kind: (argumentToInterface at: name).
		variableToType at: name put: interfaceObj ].
	
	super acceptMethodNode: aMethodNode.

]

{
	#category : #visiting,
	#timestamp : 'zagto 11/24/2020 17:11'
}
SLAnalyzer >> acceptSequenceNode: aSequenceNode [ 
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
	#timestamp : 'zagto 11/24/2020 22:26'
}
SLAnalyzer >> acceptVariableNode: aVariableNode [
	aVariableNode isRead ifTrue: [
		aVariableNode propertyAt: #type put:  (self variableType: aVariableNode name)]
]

{
	#category : #'program resources',
	#timestamp : 'zagto 11/24/2020 22:07'
}
SLAnalyzer >> declareProgramResource: name kind: kind [
	variableToInterface
		at: name
		ifPresent: [ :lastKind |
			lastKind = kind ifFalse: [
				self error: 'Program resource ' , name , ' was already declared as ' , lastKind ,
				' but is redeclared here as ' , kind ]]
		ifAbsentPut: [ kind ].
]

{
	#category : #'initialize-release',
	#timestamp : 'zagto 11/24/2020 16:46'
}
SLAnalyzer >> initialize [
	super initialize.
	stream := WriteStream on: (String new: 42).
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 16:46'
}
SLAnalyzer >> result [
	^ stream contents
]

{
	#category : #'error handling',
	#timestamp : 'zagto 11/24/2020 18:51'
}
SLAnalyzer >> selectorPartError: aString [
	aString = 'outputs:'
		ifTrue: [ ^ self error: 'GLSL outputs are always the first argument, they should not be ' ,
			'declared by selector part outputs:' ].
	self error: 'Selector part ' , aString , ' is not a GLSL interface type'.
]

{
	#category : #'program resources',
	#timestamp : 'zagto 11/24/2020 22:11'
}
SLAnalyzer >> setVariable: name toType: type [
	variableToType
		at: name
		ifPresent: [ :lastType |
			lastType = type ifFalse: [
				self error: 'Variable ' , name , ' was already declared as ' , lastType asString ,
				' but is redeclared here as ' , type asString ]]
		ifAbsentPut: [ type ].
]

{
	#category : #'program resources',
	#timestamp : 'zagto 11/24/2020 22:27'
}
SLAnalyzer >> variableType: name [
	^ variableToType at: name ifAbsent: [ self error: '#todo' ]
]
