Class {
	#name : #SLAnalyzer,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'argumentToInterface',
		'variableToInterface',
		'variableToType'
	],
	#classVars : [
		'InterfaceTypeMap',
		'SwizzlingGetters',
		'SwizzlingSetters'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #'class initialization',
	#timestamp : 'stlu 12/17/2020 10:51'
}
SLAnalyzer class >> initialize [

	self initializeInterfaceTypeMap.
	self initializeSwizzlingSelectors
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 12/17/2020 10:50'
}
SLAnalyzer class >> initializeInterfaceTypeMap [

	InterfaceTypeMap := {
		'uniforms:' -> 'uniform'.
		'inputs:' -> 'in'
	} as: Dictionary
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 12/17/2020 13:36'
}
SLAnalyzer class >> initializeSwizzlingSelectors [

	SwizzlingGetters := IdentitySet new.
	SwizzlingSetters := IdentitySet new.
	#('xyzw' 'rgba' 'stpq') do: [:group || func |
		1 to: 4 do: [:i |
			group combinations: i atATimeDo: [:combination |
				combination permutationsDo: [:each |
					SwizzlingSetters add: (each , ':') asSymbol]]].
		func := [:prefix |
					group do: [:char || sel |
						sel := prefix , char.
						SwizzlingGetters add: sel asSymbol.
						sel size < 4 ifTrue: [func value: sel]]].
		func value: ''].
]

{
	#category : #visiting,
	#timestamp : 'zagto 12/1/2020 18:08'
}
SLAnalyzer >> acceptAssignmentNode: anAssignmentNode [
	| name |
	super acceptAssignmentNode: anAssignmentNode.
	
	name := anAssignmentNode variable name.
	anAssignmentNode type: anAssignmentNode value type.
	self setVariable: name toType: anAssignmentNode type
	
]

{
	#category : #visiting,
	#timestamp : 'zagto 12/1/2020 18:34'
}
SLAnalyzer >> acceptBlockNode: aBlockNode [
	super acceptBlockNode: aBlockNode.
	aBlockNode type: nil.
]

{
	#category : #visiting,
	#timestamp : 'zagto 12/1/2020 13:57'
}
SLAnalyzer >> acceptLiteralNode: aLiteralNode [
	super acceptLiteralNode: aLiteralNode.
	aLiteralNode type: aLiteralNode value glslType
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/17/2020 12:42'
}
SLAnalyzer >> acceptMessageNode: aMessageNode [
	| mapping |
	super acceptMessageNode: aMessageNode.

	mapping := self findMessageMapping: aMessageNode.
	
	aMessageNode mapping: mapping.
	aMessageNode type: mapping type
	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/14/2020 16:58'
}
SLAnalyzer >> acceptMethodNode: aMethodNode [
	|args selParts|
	args := aMethodNode arguments.
	selParts := aMethodNode selectorParts.
	
	argumentToInterface := Dictionary new. "#u -> #uniform"
	variableToInterface := Dictionary new. "#bloomBlur -> #uniform"
	variableToType := Dictionary new. "#bloomBlur -> GLSLFloatVector3"
	
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
	#timestamp : 'zagto 12/1/2020 14:01'
}
SLAnalyzer >> acceptVariableNode: aVariableNode [
	aVariableNode isRead ifTrue: [
		aVariableNode type: (self variableType: aVariableNode name)]
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/2/2020 00:33'
}
SLAnalyzer >> argumentToInterface [

	^ argumentToInterface
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
	#category : #'message mapping',
	#timestamp : 'stlu 12/17/2020 13:24'
}
SLAnalyzer >> findMessageMapping: aMessageNode [

	| receiver selector arguments |
	receiver := aMessageNode receiver.
	selector := aMessageNode selector.
	arguments := aMessageNode arguments.
	
	(self mapSwizzlingSelector: selector receiver: receiver arguments: arguments) ifNotNil: [:mapping | ^ mapping].
	
	^ aMessageNode receiver type
		perform: aMessageNode selector
		withArguments: (aMessageNode arguments collect: [:arg | arg type] as: Array)
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
	#category : #'message mapping',
	#timestamp : 'stlu 12/17/2020 13:30'
}
SLAnalyzer >> mapSwizzlingSelector: selector receiver: receiver arguments: arguments [

	(receiver type isVector or: [receiver type isScalar]) ifFalse: [^ nil].
	
	(SwizzlingGetters includes: selector) ifTrue: [
		| resultType |
		resultType := GLSLVector
						componentType: receiver type componentType
						numComponents: selector size.
		^ SLMappingToComponentRead new
			targetSelector: selector;
			type: resultType].
	
	(SwizzlingSetters includes: selector) ifTrue: [
		| argType |
		argType := arguments first type.
		self assert: (argType isVector or: [argType isScalar]).
		self assert: argType numComponents = (selector size - 1).
		^ SLMappingToComponentWrite
			targetSelector: selector allButLast;
			type: argType].
	^ nil
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
	#category : #accessing,
	#timestamp : 'stlu 12/2/2020 00:33'
}
SLAnalyzer >> variableToInterface [

	^ variableToInterface
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/2/2020 00:33'
}
SLAnalyzer >> variableToType [

	^ variableToType
]

{
	#category : #'program resources',
	#timestamp : 'zagto 11/24/2020 22:27'
}
SLAnalyzer >> variableType: name [
	^ variableToType at: name ifAbsent: [ self error: '#todo' ]
]
