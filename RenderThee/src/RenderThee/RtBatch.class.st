Class {
	#name : #RtBatch,
	#superclass : #Object,
	#instVars : [
		'primitives',
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
	#'squeak_changestamp' : 'stlu 9/28/2021 13:56'
}
RtBatch >> addInstance: value1 with: value2 with: value3 with: value4 [

	| offset |
	offset := instanceIndex * 4.
	instanceData
		at: offset + 1 put: value1;
		at: offset + 2 put: value2;
		at: offset + 3 put: value3;
		at: offset + 4 put: value4.
	instanceIndex := instanceIndex + 1.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:39'
}
RtBatch >> addPrimitive: aPrimitive [

	primitives add: aPrimitive.
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 9/28/2021 17:30'
}
RtBatch >> batchPrimitives [

	isAlpha
		ifTrue: [primitives do: [:prim | prim addToBatch: self]]
		ifFalse: [primitives reverseDo: [:prim | prim addToBatch: self]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:29'
}
RtBatch >> colorStore [

	^ renderer colorStore
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 9/28/2021 17:29'
}
RtBatch >> draw [

	self uploadInstanceData.
	
	GL enable: GL_CULL_FACE.
	GL cullFace: GL_BACK.
	GL frontFace: GL_CW.
	
	GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS.
	isAlpha
		ifTrue: [
			GL depthMask: GL_FALSE.
			GL enable: GL_BLEND.
			GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE]
		ifFalse: [
			GL depthMask: GL_TRUE.
			GL disable: GL_BLEND].
	
	(self vao vertexBufferBindingAt: 1) buffer: instanceVBO.
	
	self program boundDuring: [
		self vao
			drawElements: GL_TRIANGLES
			numVertices: 6
			indexType: GL_UNSIGNED_BYTE
			numInstances: instanceIndex].
]

{
	#category : #glyphs,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:15'
}
RtBatch >> glyphCacheForFont: font [

	^ renderer fontCache
		at: font
		ifAbsentPut: [Dictionary new]
]

{
	#category : #glyphs,
	#'squeak_changestamp' : 'stlu 11/17/2021 14:53'
}
RtBatch >> glyphForCharacter: aCharacter inFont: aFont cache: glyphCache [

	^ glyphCache at: aCharacter ifAbsentPut: [
		| form width allocation glyphBounds glyphIndex canvas |
		width := aFont widthOf: aCharacter.
		canvas := FormCanvas extent: width @ aFont height depth: aFont depth.
		canvas fillColor: Color transparent.
		canvas
			drawString: aCharacter asString
			in: (0@0 extent: canvas extent)
			font: aFont
			color: Color black.
		form := canvas form.
		allocation := renderer glyphStore uploadForm: form.
		glyphBounds := allocation rectangle origin extent: form extent.
		glyphIndex := renderer persistentStoreF
			add: glyphBounds left asFloat
			add: glyphBounds top asFloat
			add: glyphBounds right asFloat
			add: glyphBounds bottom asFloat.
		{ allocation . glyphIndex }].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:38'
}
RtBatch >> initialize [

	isAlpha := true.
	primitives := OrderedCollection new: 100.
	self initializeInstanceVBO.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/7/2021 12:57'
}
RtBatch >> initializeInstanceVBO [

	instanceData := ExternalType uint32_t allocate: 512 squared * 4.
	instanceVBO := GLBuffer create.
	instanceVBO usage: GL_DYNAMIC_DRAW size: instanceData byteSize.
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
	#'squeak_changestamp' : 'stlu 9/28/2021 16:06'
}
RtBatch >> reset [

	instanceIndex := 0.
	primitives reset.
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
