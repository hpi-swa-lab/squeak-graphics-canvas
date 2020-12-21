Class {
	#name : #SLGenerator,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'stream',
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
	#timestamp : 'stlu 12/2/2020 01:07'
}
SLGenerator >> acceptAssignmentNode: anAssignmentNode [ 
	stream
		nextPutAll: anAssignmentNode variable name;
		nextPutAll: ' = '.
	self visitNode: anAssignmentNode value
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:23'
}
SLGenerator >> acceptBlockNode: aBlockNode [
	self visitNode: aBlockNode body
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 00:24'
}
SLGenerator >> acceptLiteralNode: aLiteralNode [
	stream nextPutAll: aLiteralNode value asGLSLLiteral
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 02:58'
}
SLGenerator >> acceptMessageNode: aMessageNode [
	aMessageNode mapping generate: aMessageNode for: self
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/21/2020 14:09'
}
SLGenerator >> acceptMethodNode: aMethodNode [
	analyzer := SLAnalyzer new visitNode: aMethodNode.
	stream := WriteStream on: (String new: aMethodNode source size).

	stream nextPutAll: '#version 330 core'; lf; lf.
	
	analyzer resourceVariableToInterface keysAndValuesDo: [:name :interface |
		(name beginsWith: 'gl_') ifFalse: [
			stream
				nextPutAll: interface; space;
				nextPutAll: (analyzer resourceVariableToType at: name) declarator; space;
				nextPutAll: name;
				nextPut: $;; lf]].

	stream nextPutAll: 'void main() {'; lf.
	
	aMethodNode pragmas do: [ :each | self visitNode: each ].
	self visitNode: aMethodNode body.
	
	stream nextPut: $}
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/21/2020 13:57'
}
SLGenerator >> acceptSequenceNode: aSequenceNode [

	aSequenceNode temporaries do: [:each |
		| type |
		type := analyzer variableToType at: each name.
		stream
			nextPutAll: type declarator; space;
			nextPutAll: each name;
			nextPut: $;; lf].
	
	aSequenceNode statements do: [:each |
		self visitNode: each.
		stream nextPutAll: ';'; lf]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/21/2020 13:57'
}
SLGenerator >> acceptVariableNode: aVariableNode [

	stream nextPutAll: aVariableNode name
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:38'
}
SLGenerator >> generate: aMessageNode call: callName [
	stream
		nextPutAll: callName;
		nextPut: $(.
	self visitNode: aMessageNode receiver.
	aMessageNode arguments do: [:each |
		stream nextPut: $,; space.
		self visitNode: each].
	stream nextPut: $)
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:13'
}
SLGenerator >> generate: aMessageNode componentRead: componentName [
	self visitNode: aMessageNode receiver.
	stream
		nextPut: $.;
		nextPutAll: componentName
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:12'
}
SLGenerator >> generate: aMessageNode componentWrite: componentName [
	self visitNode: aMessageNode receiver.
	stream
		nextPut: $.;
		nextPutAll: componentName;
		nextPutAll: ' = '.
	self visitNode: aMessageNode arguments first
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:26'
}
SLGenerator >> generate: aMessageNode condition: isNegated [
	stream nextPutAll: 'if ('.
	isNegated ifTrue: [stream nextPutAll: '!('].
	self visitNode: aMessageNode receiver.
	isNegated ifTrue: [stream nextPut: $)].
	stream nextPutAll: ') {'; lf.
	self visitNode: aMessageNode arguments first body.
	stream nextPut: $}.
	
	aMessageNode arguments size > 1 ifTrue: [
		stream nextPutAll: ' else {'; lf.
		self visitNode: aMessageNode arguments second body.
		stream nextPut: $}].
	
	stream lf
]

{
	#category : #visiting,
	#timestamp : 'zagto 12/15/2020 19:01'
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
	stream nextPutAll: ')'
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:27'
}
SLGenerator >> generate: aMessageNode resourceRead: resourceName [
	stream nextPutAll: resourceName
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/2/2020 03:36'
}
SLGenerator >> generate: aMessageNode resourceWrites: resourceNames [
	resourceNames with: aMessageNode arguments do: [:name :arg |
		stream
			nextPutAll: name;
			nextPutAll: ' = '.
		self visitNode: arg]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 12/2/2020 00:27'
}
SLGenerator >> initialize [
	super initialize.
	stream := WriteStream on: (String new: 500)
]

{
	#category : #accessing,
	#timestamp : 'zagto 11/24/2020 16:46'
}
SLGenerator >> result [
	^ stream contents
]
