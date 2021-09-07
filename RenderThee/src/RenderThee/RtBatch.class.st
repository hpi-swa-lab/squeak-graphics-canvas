Class {
	#name : #RtBatch,
	#superclass : #Object,
	#instVars : [
		'instanceIndex',
		'instanceData',
		'instanceVBO',
		'isAlpha',
		'renderer'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:29'
}
RtBatch >> colorStore [

	^ renderer colorStore
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:51'
}
RtBatch >> draw [

	self uploadInstanceData.
	
	GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS.
	isAlpha
		ifTrue: [
			self flag: #todo. "depth read-only"
			GL depthMask: GL_FALSE.
			GL enable: GL_BLEND.
			GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE]
		ifFalse: [
			GL depthMask: GL_TRUE.
			GL disable: GL_BLEND].
	
	(self vao vertexBufferBindingAt: 1) buffer: instanceVBO.
	
	self program boundDuring: [
		self vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: instanceIndex].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:17'
}
RtBatch >> initialize [

	isAlpha := true.
	self initializeInstanceVBO.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:55'
}
RtBatch >> initializeInstanceVBO [

	instanceData := ExternalType uint32_t allocate: 512 squared.
	instanceVBO := GLBuffer create.
	instanceVBO usage: GL_DYNAMIC_DRAW size: instanceData size * 4.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:18'
}
RtBatch >> isAlpha [

	^ isAlpha
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:18'
}
RtBatch >> isAlpha: anObject [

	isAlpha := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:14'
}
RtBatch >> program [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:17'
}
RtBatch >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:17'
}
RtBatch >> renderer: anObject [

	renderer := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/6/2021 11:03'
}
RtBatch >> reset [

	instanceIndex := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:29'
}
RtBatch >> transientStoreF [

	^ renderer transientStoreF
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:29'
}
RtBatch >> transientStoreI [

	^ renderer transientStoreI
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:21'
}
RtBatch >> uploadInstanceData [

	instanceVBO
		data: instanceData
		size: instanceIndex * instanceData bytesPerElement * 4.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:13'
}
RtBatch >> vao [

	^ renderer vao
]
