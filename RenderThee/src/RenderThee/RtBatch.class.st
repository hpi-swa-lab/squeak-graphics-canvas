Class {
	#name : #RtBatch,
	#superclass : #Object,
	#instVars : [
		'vao',
		'program',
		'quadVBO',
		'instanceIndex',
		'instanceData',
		'instanceVBO',
		'primHeadersFTexture',
		'primHeadersITexture',
		'colorsTexture',
		'isAlpha'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:13'
}
RtBatch >> colorsTexture [

	^ colorsTexture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:13'
}
RtBatch >> colorsTexture: anObject [

	colorsTexture := anObject
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 7/8/2021 20:11'
}
RtBatch >> draw [

	instanceVBO
		data: instanceData
		size: instanceIndex * instanceData bytesPerElement * 4.
	
	isAlpha
		ifTrue: [
			self flag: #todo. "depth read-only"
			GL disable: GL_DEPTH_TEST.
			GL enable: GL_BLEND.
			GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE]
		ifFalse: [
			GL disable: GL_BLEND.
			GL enable: GL_DEPTH_TEST.
			GL depthFunc: GL_LESS].
	
	program boundDuring: [
		vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: instanceIndex]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:21'
}
RtBatch >> initialize [

	isAlpha := true.
	self initializeProgram.
	self initializeQuadVBO.
	self initializeInstanceVBO.
	self initializeVAO.
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
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 20:04'
}
RtBatch >> initializeProgram [

	program := GLProgram
					vertexSource: self vertexShader
					fragmentSource: self fragmentShader.
	program uniforms
		sPrimHeadersF: 1;
		sPrimHeadersI: 2;
		sTransforms: 3;
		sClipRects: 4;
		sColors: 5.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/6/2021 10:55'
}
RtBatch >> initializeQuadVBO [

	quadVBO := GLBuffer create.
	quadVBO usage: GL_STATIC_DRAW data: #(
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			0.0 0.0	"top-left"
			
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			1.0 1.0	"bottom-right"
		) asFloat32Array.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/6/2021 10:58'
}
RtBatch >> initializeVAO [

	vao := GLVertexArray create.
	vao boundDuring: [
		(vao vertexBufferBindingAt: 0) buffer: quadVBO stride: 2 * 4.
		(vao vertexAttributeAt: program inputs aPosition location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 0;
			associateVertexBufferBindingAt: 0.
		
		(vao vertexBufferBindingAt: 1)
			buffer: instanceVBO stride: 16;
			instanceDivisor: 1.
		
		(vao vertexAttributeAt: 1)
			enable;
			formatAsInteger: GL_UNSIGNED_INT numComponents: 4 offset: 0;
			associateVertexBufferBindingAt: 1].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> instanceData [

	^ instanceData
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> instanceData: anObject [

	instanceData := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> instanceIndex [

	^ instanceIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> instanceIndex: anObject [

	instanceIndex := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> instanceVBO [

	^ instanceVBO
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> instanceVBO: anObject [

	instanceVBO := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:17'
}
RtBatch >> isAlpha [

	^ isAlpha
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:17'
}
RtBatch >> isAlpha: aBoolean [

	isAlpha := aBoolean.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> primHeadersFTexture [

	^ primHeadersFTexture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> primHeadersFTexture: anObject [

	primHeadersFTexture := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:14'
}
RtBatch >> primHeadersITexture [

	^ primHeadersITexture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:14'
}
RtBatch >> primHeadersITexture: anObject [

	primHeadersITexture := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> program [

	^ program
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> program: anObject [

	program := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> quadVBO [

	^ quadVBO
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> quadVBO: anObject [

	quadVBO := anObject
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
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> vao [

	^ vao
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:41'
}
RtBatch >> vao: anObject [

	vao := anObject
]
