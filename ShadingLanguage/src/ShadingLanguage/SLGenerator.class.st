Class {
	#name : #SLGenerator,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'stream',
		'indentation',
		'variableNameMap',
		'analyzer'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #examples,
	#timestamp : 'stlu 12/2/2020 04:22'
}
SLGenerator class >> example1 [
	"self example1"
	| source |
	source := (SLExampleShader class sourceCodeAt: #bloom:inputs:uniforms:) asString.
	^ self transform: source
]

{
	#category : #'class initialization',
	#timestamp : 'zagto 2/28/2021 19:27'
}
SLGenerator class >> initialize [
	CodeHolder 	addContentsSymbolQuint: #(#glsl #toggleGeneratedGLSL #showingGeneratedGLSLString 'GLSL' 'generated GLSL') afterPosition: (CodeHolder contentsSymbolQuints size).
	
	CodeHolder addEditContentsOption: #glsl -> #generatedGLSL.
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/2/2020 04:19'
}
SLGenerator class >> transform: sourceString [

	| ast |
	ast := RBParser parseMethod: sourceString.
	^ self new
		visitNode: ast;
		result
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 18:58'
}
SLGenerator >> acceptAssignmentNode: anAssignmentNode [

	self visitNode: anAssignmentNode variable.
	stream nextPutAll: ' = '.
	self visitNode: anAssignmentNode value.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 18:58'
}
SLGenerator >> acceptBlockNode: aBlockNode [

	self visitNode: aBlockNode body.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 18:58'
}
SLGenerator >> acceptLiteralNode: aLiteralNode [

	stream nextPutAll: aLiteralNode value asGLSLLiteral.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 18:58'
}
SLGenerator >> acceptMessageNode: aMessageNode [

	aMessageNode mapping generate: aMessageNode for: self.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:13'
}
SLGenerator >> acceptMethodNode: aMethodNode [

	analyzer := SLAnalyzer new visitNode: aMethodNode.
	stream := WriteStream on: (String new: aMethodNode source size).

	self versionHeader.
	self generateResourceVariables.
	self openMainBlock.
	
	aMethodNode pragmas do: [ :each | self visitNode: each ].
	self visitNode: aMethodNode body.
	
	self closeBlock.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 18:59'
}
SLGenerator >> acceptSequenceNode: aSequenceNode [

	aSequenceNode temporaries do: [:varNode |
		| type |
		type := analyzer variableToType at: varNode name.
		type printDeclarationNamed: (self actualName: varNode name) on: stream.
		self statementSeparator.
		self newLine].

	aSequenceNode temporaries ifNotEmpty: [self newLine].
	
	aSequenceNode statements
		do: [:each |
			self visitNode: each.
			self statementSeparator]
		separatedBy: [
			self newLine].
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 18:59'
}
SLGenerator >> acceptVariableNode: aVariableNode [

	stream nextPutAll: (self actualName: aVariableNode name).
]

{
	#category : #visiting,
	#timestamp : 'stlu 1/10/2021 20:21'
}
SLGenerator >> actualName: varName [

	^ variableNameMap
		at: varName
		ifAbsentPut: [self findUnusedName: varName]
]

{
	#category : #'glsl snippets',
	#timestamp : 'zagto 2/28/2021 18:35'
}
SLGenerator >> closeBlock [

	self outdent.
	self newLine.
	stream nextPut: $}.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:01'
}
SLGenerator >> findUnusedName: name [

	| alias |
	alias := name.
	2 to: self maximumAliasAttempts do: [:i |
		(analyzer resourceVariableToType includesKey: alias) ifFalse: [^ alias].
		alias := name , i].
	self error: 'Could not alias variable ' , name , '. Something probably went wrong.'.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:01'
}
SLGenerator >> generate: aMessageNode call: callName [

	stream
		nextPutAll: callName;
		nextPut: $(.
	self visitNode: aMessageNode receiver.
	aMessageNode arguments do: [:each |
		stream nextPut: $,; space.
		self visitNode: each].
	stream nextPut: $).
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode componentRead: componentName [

	self visitNode: aMessageNode receiver.
	stream
		nextPut: $.;
		nextPutAll: componentName.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode componentWrite: componentName [

	self visitNode: aMessageNode receiver.
	stream
		nextPut: $.;
		nextPutAll: componentName;
		nextPutAll: ' = '.
	self visitNode: aMessageNode arguments first.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode conditionExpression: isNegated [

	isNegated ifTrue: [stream nextPut: $!].
	stream nextPut: $(.
	self visitNode: aMessageNode receiver.
	stream nextPutAll: ') ? '.
	self visitNode: aMessageNode arguments first body statements last.
	
	aMessageNode arguments size > 1 ifTrue: [
		stream nextPutAll: ' : '.
		self visitNode: aMessageNode arguments second body statements last].
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode conditionStatement: isNegated [

	stream nextPutAll: 'if ('.
	isNegated ifTrue: [stream nextPutAll: '!('].
	self visitNode: aMessageNode receiver.
	isNegated ifTrue: [stream nextPut: $)].
	stream nextPutAll: ') '.
	self openBlock.
	self visitNode: aMessageNode arguments first body.
	self closeBlock.
	
	aMessageNode arguments size > 1 ifTrue: [
		stream nextPutAll: ' else '.
		self openBlock.
		self visitNode: aMessageNode arguments second body.
		self closeBlock].
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:06'
}
SLGenerator >> generate: aMessageNode forLoopFrom: from to: to [

	| blockNode varNode |
	blockNode := aMessageNode arguments second.
	varNode := blockNode arguments first.
	stream nextPutAll: 'for ('.
	varNode type printDeclarationNamed: varNode name on: stream.
	stream nextPutAll: ' = '.
	self visitNode: from.
	stream
		nextPutAll: '; ';
		nextPutAll: varNode name;
		nextPutAll: ' <= '.
	self visitNode: to.
	stream
		nextPutAll: '; ';
		nextPutAll: varNode name;
		nextPutAll: '++'.
	stream nextPutAll: ') '.
	self openBlock.
	self visitNode: blockNode body.
	self closeBlock.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode operator: operator [

	stream nextPutAll: '('.
	aMessageNode numArgs = 0 ifTrue: [
		stream nextPutAll: operator.
		self visitNode: aMessageNode receiver].
	
	aMessageNode numArgs = 1 ifTrue: [
		self visitNode: aMessageNode receiver.
		stream space; nextPutAll: operator; space.
		self visitNode: aMessageNode arguments first].
	stream nextPutAll: ')'.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode resourceRead: resourceName [

	stream nextPutAll: resourceName.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generate: aMessageNode resourceWrites: resourceNames [

	(1 to: resourceNames size)
		do: [:i |
			| name arg |
			name := resourceNames at: i.
			arg := aMessageNode arguments at: i.
			stream
				nextPutAll: name;
				nextPutAll: ' = '.
			self visitNode: arg]
		separatedBy: [
			self statementSeparator.
			self newLine].
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:22'
}
SLGenerator >> generateArrayRead: aMessageNode [

	self visitNode: aMessageNode receiver.
	stream nextPut: $[.
	self visitNode: aMessageNode arguments first.
	stream nextPut: $].
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:23'
}
SLGenerator >> generateArrayWrite: aMessageNode [

	self visitNode: aMessageNode receiver.
	stream nextPut: $[.
	self visitNode: aMessageNode arguments first.
	stream nextPutAll: '] = '.
	self visitNode: aMessageNode arguments second.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:11'
}
SLGenerator >> generateResourceVariables [
	analyzer resourceVariableToInterface keysAndValuesDo: [:name :interface |
		(self isGLIntegrated: name) ifFalse: [
			| type |
			type := analyzer resourceVariableToType at: name.
			stream
				nextPutAll: interface;
				space.
			type printDeclarationNamed: name on: stream.
			self statementSeparator.
			self newLine]].
	self newLine.
]

{
	#category : #stream,
	#timestamp : 'zagto 2/28/2021 19:23'
}
SLGenerator >> indent [

	indentation := indentation + 1.
]

{
	#category : #'initialize-release',
	#timestamp : 'zagto 2/28/2021 19:14'
}
SLGenerator >> initialize [

	super initialize.
	stream := WriteStream on: (String new: 500).
	variableNameMap := Dictionary new.
	indentation := 0.
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:11'
}
SLGenerator >> isGLIntegrated: resourceName [

	^ resourceName beginsWith: 'gl_'
]

{
	#category : #visiting,
	#timestamp : 'zagto 2/28/2021 19:01'
}
SLGenerator >> maximumAliasAttempts [

	^ 100
]

{
	#category : #stream,
	#timestamp : 'zagto 2/28/2021 19:23'
}
SLGenerator >> newLine [

	stream lf.
	indentation timesRepeat: [
		stream tab].
]

{
	#category : #'glsl snippets',
	#timestamp : 'zagto 2/28/2021 19:04'
}
SLGenerator >> openBlock [

	stream nextPut: ${.
	self indent.
	self newLine.
]

{
	#category : #'glsl snippets',
	#timestamp : 'zagto 2/28/2021 19:23'
}
SLGenerator >> openMainBlock [

	stream nextPutAll: 'void main() '.
	self openBlock.
]

{
	#category : #stream,
	#timestamp : 'zagto 2/28/2021 19:23'
}
SLGenerator >> outdent [

	indentation := indentation - 1.
]

{
	#category : #accessing,
	#timestamp : 'zagto 2/28/2021 19:14'
}
SLGenerator >> result [

	^ stream contents
]

{
	#category : #'glsl snippets',
	#timestamp : 'zagto 2/28/2021 19:09'
}
SLGenerator >> statementSeparator [

	stream nextPut: $;.
]

{
	#category : #'glsl snippets',
	#timestamp : 'zagto 2/28/2021 18:29'
}
SLGenerator >> versionHeader [

	"currently we only support generating 3.30 shader code"
	stream nextPutAll: '#version 330 core'.
	self newLine.
	self newLine.
]
