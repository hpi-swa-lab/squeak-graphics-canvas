Class {
	#name : #GLVertexArray,
	#superclass : #GLObject,
	#instVars : [
		'vertexAttributeBindings',
		'vertexBufferBindings',
		'elementBuffer'
	],
	#category : #'OpenGLObjects-VertexAttributes',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:49'
}
GLVertexArray class >> allocate: n in: anIntegerArray [

	GL genVertexArrays: n with: anIntegerArray
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:12'
}
GLVertexArray class >> bound [

	^ GLObjectBindings current vertexArray
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:13'
}
GLVertexArray class >> unbind [

	GL bindVertexArray: GL_NONE.
	GLObjectBindings current vertexArray: nil
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:11'
}
GLVertexArray >> bind [

	GL bindVertexArray: id.
	GLObjectBindings current vertexArray: self
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:10'
}
GLVertexArray >> boundDuring: aBlock [

	| previous |
	(previous := self class bound) = self ifTrue: [^ aBlock value].
	self bind.
	^ aBlock ensure: [
		previous
			ifNil: [self class unbind]
			ifNotNil: [previous bind]]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:41'
}
GLVertexArray >> delete [

	GL deleteVertexArrays: 1 with: (IntegerArray with: id)
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 16:58'
}
GLVertexArray >> drawArrays: primitiveTypeEnum command: aDrawArraysIndirectCommand [

	self boundDuring: [
		GL
			drawArraysIndirect: primitiveTypeEnum
			with: aDrawArraysIndirectCommand]
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 17:13'
}
GLVertexArray >> drawArrays: primitiveTypeEnum count: numVertices [

	self
		drawArrays: primitiveTypeEnum
		count: numVertices
		startingAt: 0
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 17:13'
}
GLVertexArray >> drawArrays: primitiveTypeEnum count: numVertices numInstances: numInstances [

	self
		drawArrays: primitiveTypeEnum
		count: numVertices
		startingAt: 0
		numInstances: numInstances
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 17:12'
}
GLVertexArray >> drawArrays: primitiveTypeEnum count: numVertices numInstances: numInstances baseInstance: baseInstance [

	self
		drawArrays: primitiveTypeEnum
		count: numVertices
		startingAt: 0
		numInstances: numInstances
		baseInstance: baseInstance
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 17:01'
}
GLVertexArray >> drawArrays: primitiveTypeEnum count: numVertices startingAt: startingIndex [

	self boundDuring: [
		GL
			drawArrays: primitiveTypeEnum
			with: startingIndex
			with: numVertices]
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 17:02'
}
GLVertexArray >> drawArrays: primitiveTypeEnum count: numVertices startingAt: startingIndex numInstances: numInstances [

	self boundDuring: [
		GL
			drawArraysInstanced: primitiveTypeEnum
			with: startingIndex
			with: numVertices
			with: numInstances]
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/14/2021 17:02'
}
GLVertexArray >> drawArrays: primitiveTypeEnum count: numVertices startingAt: startingIndex numInstances: numInstances baseInstance: baseInstance [

	self boundDuring: [
		GL
			drawArraysInstancedBaseInstance: primitiveTypeEnum
			with: startingIndex
			with: numVertices
			with: numInstances
			with: baseInstance]
]

{
	#category : #'drawing - indexed',
	#timestamp : 'stlu 3/14/2021 17:59'
}
GLVertexArray >> drawElements: primitiveTypeEnum count: numVertices startingAt: elementBufferOffset type: indexTypeEnum [
	"indexTypeEnum must be one of UNSIGNED_BYTE, UNSIGNED_SHORT, or UNSIGNED_INT"
	self boundDuring: [
		GL
			drawElements: primitiveTypeEnum
			with: numVertices
			with: indexTypeEnum
			with: (ExternalAddress fromInteger: elementBufferOffset)]
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 12:13'
}
GLVertexArray >> isAllocated [

	^ GL isVertexArray: id
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:15'
}
GLVertexArray >> isVertexArray [

	^ true
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/15/2021 16:09'
}
GLVertexArray >> multiDrawArrays: primitiveTypeEnum counts: rawBitsCountsArray startIndices: rawBitsStartsArray drawCount: drawCount [

	self boundDuring: [
		GL
			multiDrawArrays: primitiveTypeEnum
			with: rawBitsStartsArray
			with: rawBitsCountsArray
			with: drawCount]
]

{
	#category : #'drawing - arrays',
	#timestamp : 'stlu 3/15/2021 16:10'
}
GLVertexArray >> multiDrawArraysIndirect: primitiveTypeEnum commands: rawBitsArrayOfDrawArraysIndirectCommand drawCount: drawCount stride: byteStride [

	self flag: #todo. "add remaining draw commands"
	self boundDuring: [
		GL
			multiDrawArraysIndirect: primitiveTypeEnum
			with: rawBitsArrayOfDrawArraysIndirectCommand
			with: drawCount
			with: byteStride]
]
