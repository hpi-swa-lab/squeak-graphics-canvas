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
	#category : #'ShadingLanguage-Core'
}

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'zagto 2/28/2021 19:27'
}
SLAnalyzer class >> initialize [

	self initializeInterfaceTypeMap.
	self initializeSwizzlingSelectors.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 12/18/2020 14:36'
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
	#'squeak_changestamp' : 'stlu 12/17/2020 13:36'
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
	#'squeak_changestamp' : 'zagto 2/28/2021 19:19'
}
SLAnalyzer >> acceptAssignmentNode: anAssignmentNode [

	| name |
	super acceptAssignmentNode: anAssignmentNode.
	
	name := anAssignmentNode variable name.
	anAssignmentNode type: anAssignmentNode value type.
	self declareVariable: name toType: anAssignmentNode type.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/10/2021 19:36'
}
SLAnalyzer >> acceptBlockNode: aBlockNode [

	| type |
	super acceptBlockNode: aBlockNode.
	type := aBlockNode body statements last type.
	aBlockNode type: type.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
}
SLAnalyzer >> acceptLiteralNode: aLiteralNode [

	super acceptLiteralNode: aLiteralNode.
	aLiteralNode type: aLiteralNode value glslType.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
}
SLAnalyzer >> acceptMessageNode: aMessageNode [

	| mapping |
	aMessageNode selector = #to:do:
		ifTrue: [
			self visitNode: aMessageNode receiver.
			self visitNode: aMessageNode arguments first.
			mapping := self mapForLoop: aMessageNode.
			self visitNode: aMessageNode arguments second]
		ifFalse: [
			super acceptMessageNode: aMessageNode].

	mapping ifNil: [mapping := self findMessageMapping: aMessageNode].
	
	aMessageNode mapping: mapping.
	aMessageNode type: mapping type.
	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/18/2020 22:05'
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
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
}
SLAnalyzer >> acceptVariableNode: aVariableNode [

	| type |
	aVariableNode isRead ifFalse: [^ self].
	(interfaceVariables includesKey: aVariableNode name) ifTrue: [^ self].
	
	type := variableToType
				at: aVariableNode name
				ifAbsent: [nil"^ self error: 'Type of variable unknown'"].
	aVariableNode type: type.
]

{
	#category : #'program resources',
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
}
SLAnalyzer >> declareResourceVariable: resourceName toInterface: interfaceSymbol [

	resourceVariableToInterface
		at: resourceName
		ifPresent: [:existingInterface |
			interfaceSymbol ~= existingInterface ifTrue: [
				self error: 'Resource ' , resourceName , ' was already declared as ' , existingInterface ,
							' but is redeclared as ' , interfaceSymbol]]
		ifAbsentPut: [interfaceSymbol].
]

{
	#category : #'program resources',
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
}
SLAnalyzer >> declareResourceVariable: name toType: glslType [

	resourceVariableToType
		at: name
		ifPresent: [:existingType |
			glslType ~= existingType ifTrue: [
				self error: 'Resource ' , name , ' was already declared as ' , existingType ,
							' but is redeclared as ' , glslType]]
		ifAbsentPut: [glslType].
]

{
	#category : #'program resources',
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
}
SLAnalyzer >> declareVariable: name toType: glslType [

	variableToType
		at: name
		ifPresent: [:existingType |
			glslType ~= existingType ifTrue: [
				self error: 'Variable ' , name , ' was already declared as ' , existingType ,
							' but is redeclared as ' , glslType]]
		ifAbsentPut: [glslType].
]

{
	#category : #'message mapping',
	#'squeak_changestamp' : 'stlu 1/10/2021 20:06'
}
SLAnalyzer >> findMessageMapping: aMessageNode [

	(self mapInterfaceAccess: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	(self mapTyping: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	(self mapSwizzling: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	(self mapCondition: aMessageNode) ifNotNil: [:mapping | ^ mapping].
	
	^ aMessageNode receiver type
		perform: aMessageNode selector
		withArguments: (aMessageNode arguments collect: [:arg | arg type] as: Array)
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:20'
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
		interfaceVariables at: arg name put: interface ].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/21/2020 13:59'
}
SLAnalyzer >> interfaceVariables [

	^ interfaceVariables
]

{
	#category : #'message mapping',
	#'squeak_changestamp' : 'stlu 1/10/2021 20:07'
}
SLAnalyzer >> mapCondition: aMessageNode [

	| sel isNegated isExpression mappingClass |
	sel := aMessageNode selector.
	(#(ifTrue: ifFalse: ifTrue:ifFalse: ifFalse:ifTrue:) includes: sel) ifFalse: [^ nil].
	self assert: aMessageNode receiver type isBoolean.
	isNegated := sel beginsWith: 'ifFalse'.
	isExpression := aMessageNode isDirectlyUsed.
	aMessageNode arguments do: [:arg |
		self assert: arg isBlock.
		isExpression ifTrue: [
			self assert: arg body statements size = 1]].
	(isExpression and: [aMessageNode numArgs = 2]) ifTrue: [
		| left right |
		left := aMessageNode arguments first.
		right := aMessageNode arguments second.
		self assert: left type = right type].
	
	mappingClass := isExpression
						ifTrue: [SLMappingToConditionExpression]
						ifFalse: [SLMappingToConditionStatement].
	^ mappingClass new
		isNegated: isNegated;
		type: aMessageNode arguments first type
]

{
	#category : #'message mapping',
	#'squeak_changestamp' : 'stlu 1/10/2021 14:27'
}
SLAnalyzer >> mapForLoop: aMesageNode [

	| from to varNode |
	aMesageNode selector = #to:do: ifFalse: [^ nil].
	
	from := aMesageNode receiver.
	self assert: from type isInteger.
	
	to := aMesageNode arguments first.
	self assert: to type isInteger.
	
	varNode := aMesageNode arguments second arguments first.
	self declareVariable: varNode name toType: from type.
	varNode type: from type.
	
	^ SLMappingToForLoop new
		start: from;
		end: to
]

{
	#category : #'message mapping',
	#'squeak_changestamp' : 'stlu 1/10/2021 14:55'
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
		aMessageNode type: type.
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
	#'squeak_changestamp' : 'stlu 1/10/2021 17:36'
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
		^ SLMappingToComponentWrite new
			targetSelector: selector allButLast;
			type: argType].
	
	^ nil
]

{
	#category : #'message mapping',
	#'squeak_changestamp' : 'stlu 1/10/2021 17:00'
}
SLAnalyzer >> mapTyping: aMessageNode [

	| selector typeName className class isArray type arg isResource isVariable |
	aMessageNode isBinary ifTrue: [^ nil].
	selector := aMessageNode selector.
	(selector beginsWith: 'be') ifFalse: [^ nil].
	
	isResource := isVariable := false.
	
	(aMessageNode receiver isMessage and: [
		aMessageNode receiver hasProperty: #interface]) ifTrue: [
			isResource := true].
	
	aMessageNode receiver isVariable ifTrue: [
		isVariable := true].
	
	(isResource not and: [isVariable not]) ifTrue: [^ nil].
	
	isArray := selector endsWith: 'Array:'.
	isArray ifTrue: [
		arg := aMessageNode arguments first.
		self assert: arg isValue].
	typeName := selector copyFrom: 3 to: selector size - (isArray ifTrue: [6] ifFalse: [0]).
	className := 'GLSL' , typeName.
	class := self environment classNamed: className.
	class ifNil: [^ self error: 'Could not resolve type name ' , className].
	
	type := class instance.
	isArray ifTrue: [
		type := GLSLArray numElements: arg value type: type].
	
	isResource ifTrue: [
		self declareResourceVariable: aMessageNode receiver selector toType: type].
	isVariable ifTrue: [
		self declareVariable: aMessageNode receiver name toType: type].
	
	^ SLTypingMapping new
		type: type
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/21/2020 13:59'
}
SLAnalyzer >> resourceVariableToInterface [

	^ resourceVariableToInterface
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/21/2020 13:59'
}
SLAnalyzer >> resourceVariableToType [

	^ resourceVariableToType
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/2/2020 00:33'
}
SLAnalyzer >> variableToType [

	^ variableToType
]
