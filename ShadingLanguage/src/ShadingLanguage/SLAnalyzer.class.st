Class {
	#name : #SLAnalyzer,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'interfaceVariables',
		'resourceVariableToInterface',
		'resourceVariableToType',
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
	#timestamp : 'stlu 12/18/2020 14:36'
}
SLAnalyzer class >> initializeInterfaceTypeMap [

	InterfaceTypeMap := {
		'outputs:' -> #out.
		'uniforms:' -> #uniform.
		'inputs:' -> #in
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
	#timestamp : 'stlu 12/21/2020 14:03'
}
SLAnalyzer >> acceptAssignmentNode: anAssignmentNode [
	| name |
	super acceptAssignmentNode: anAssignmentNode.
	
	name := anAssignmentNode variable name.
	anAssignmentNode type: anAssignmentNode value type.
	self declareVariable: name toType: anAssignmentNode type
	
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
	#timestamp : 'stlu 12/18/2020 22:05'
}
SLAnalyzer >> acceptMethodNode: aMethodNode [

	resourceVariableToInterface := Dictionary new.
	resourceVariableToType := Dictionary new.
	variableToType := Dictionary new.
	
	self gatherInterfaceVariables: aMethodNode.
	
	super acceptMethodNode: aMethodNode.

]

{
	#category : #visiting,
	#timestamp : 'stlu 12/21/2020 13:39'
}
SLAnalyzer >> acceptVariableNode: aVariableNode [

	| type |
	aVariableNode isRead ifFalse: [^ self].
	(interfaceVariables includesKey: aVariableNode name) ifTrue: [^ self].
	
	type := variableToType
				at: aVariableNode name
				ifAbsent: [^ self error: 'Type of variable unknown'].
	aVariableNode type: type
]

{
	#category : #'program resources',
	#timestamp : 'stlu 12/18/2020 22:32'
}
SLAnalyzer >> declareResourceVariable: resourceName toInterface: interfaceSymbol [

	resourceVariableToInterface
		at: resourceName
		ifPresent: [:existingInterface |
			interfaceSymbol ~= existingInterface ifTrue: [
				self error: 'Resource ' , resourceName , ' was already declared as ' , existingInterface ,
							' but is redeclared as ' , interfaceSymbol]]
		ifAbsentPut: [interfaceSymbol]
]

{
	#category : #'program resources',
	#timestamp : 'stlu 12/21/2020 14:11'
}
SLAnalyzer >> declareResourceVariable: name toType: glslType [

	resourceVariableToType
		at: name
		ifPresent: [:existingType |
			glslType ~= existingType ifTrue: [
				self error: 'Resource ' , name , ' was already declared as ' , existingType ,
							' but is redeclared as ' , glslType]]
		ifAbsentPut: [glslType]
]

{
	#category : #'program resources',
	#timestamp : 'stlu 12/21/2020 14:08'
}
SLAnalyzer >> declareVariable: name toType: glslType [

	variableToType
		at: name
		ifPresent: [:existingType |
			glslType ~= existingType ifTrue: [
				self error: 'Variable ' , name , ' was already declared as ' , existingType ,
							' but is redeclared as ' , glslType]]
		ifAbsentPut: [glslType]
]

{
	#category : #'message mapping',
	#timestamp : 'stlu 12/21/2020 13:23'
}
SLAnalyzer >> findMessageMapping: aMessageNode [

	| receiver selector arguments |
	receiver := aMessageNode receiver.
	selector := aMessageNode selector.
	arguments := aMessageNode arguments.
	
	(self mapInterfaceAccess: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	(self mapTyping: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	(self mapSwizzling: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	
	^ aMessageNode receiver type
		perform: aMessageNode selector
		withArguments: (aMessageNode arguments collect: [:arg | arg type] as: Array)
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/18/2020 16:37'
}
SLAnalyzer >> gatherInterfaceVariables: aMethodNode [

	interfaceVariables := Dictionary new.
	
	1 to: aMethodNode numArgs do: [:i |
		| arg selPart interface |
		arg := aMethodNode arguments at: i.
		selPart := (aMethodNode selectorParts at: i) value.
		interface := i = 1
						ifTrue: [#out]
						ifFalse: [InterfaceTypeMap at: selPart].
		interfaceVariables at: arg name put: interface ]
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/21/2020 13:59'
}
SLAnalyzer >> interfaceVariables [

	^ interfaceVariables
]

{
	#category : #'message mapping',
	#timestamp : 'stlu 12/21/2020 14:17'
}
SLAnalyzer >> mapInterfaceAccess: aMessageNode [

	| interfaceVar interface resourceNames |
	interfaceVar := aMessageNode receiver.
	interfaceVar isVariable ifFalse: [^ nil].
	interface := interfaceVariables at: interfaceVar name ifAbsent: [^ nil].
	aMessageNode propertyAt: #interface put: interface.
	
	aMessageNode numArgs = 0 ifTrue: [
		| resourceName type |
		resourceName := aMessageNode selector asString.
		type := resourceVariableToType at: resourceName ifAbsent: [nil].
		self declareResourceVariable: resourceName toInterface: interface.
		^ SLMappingToResourceRead new
			targetSelector: resourceName;
			type: type].
	
	aMessageNode isKeyword ifFalse: [
		self error: 'Invalid resource name'].
	
	resourceNames := aMessageNode selectorParts collect: [:part | part value allButLast].
	resourceNames with: aMessageNode arguments do: [:resourceName :arg |
		self declareResourceVariable: resourceName toInterface: interface.
		self declareResourceVariable: resourceName toType: arg type].
	^ SLMappingToResourceAssignments new
		targetSelector: resourceNames
]

{
	#category : #'message mapping',
	#timestamp : 'stlu 12/21/2020 13:26'
}
SLAnalyzer >> mapSwizzling: aMessageNode [

	| receiver selector |
	aMessageNode numArgs > 1 ifTrue: [^ nil].
	receiver := aMessageNode receiver.
	(receiver type isVector or: [receiver type isScalar]) ifFalse: [^ nil].
	selector := aMessageNode selector.
	
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
		argType := aMessageNode arguments first type.
		self assert: (argType isVector or: [argType isScalar]).
		self assert: argType numComponents = (selector size - 1).
		^ SLMappingToComponentWrite
			targetSelector: selector allButLast;
			type: argType].
	
	^ nil
]

{
	#category : #'message mapping',
	#timestamp : 'stlu 12/21/2020 14:12'
}
SLAnalyzer >> mapTyping: aMessageNode [

	| className class |
	aMessageNode isUnary ifFalse: [^ nil].
	aMessageNode receiver isMessage ifFalse: [^ nil].
	aMessageNode receiver propertyAt: #interface ifAbsent: [^ nil].
	(aMessageNode selector beginsWith: 'be') ifFalse: [^ nil].
	
	className := 'GLSL' , (aMessageNode selector allButFirst: 2).
	class := self environment classNamed: className.
	class ifNil: [^ self error: 'Could not resolve type name ' , className].
	
	self declareResourceVariable: aMessageNode receiver selector toType: class instance.
	^ SLPassthroughMapping new
		type: class instance
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/21/2020 13:59'
}
SLAnalyzer >> resourceVariableToInterface [

	^ resourceVariableToInterface
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/21/2020 13:59'
}
SLAnalyzer >> resourceVariableToType [

	^ resourceVariableToType
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/2/2020 00:33'
}
SLAnalyzer >> variableToType [

	^ variableToType
]
