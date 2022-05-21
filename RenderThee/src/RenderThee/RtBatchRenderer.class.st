"
Not happy with name. Builds more than a batch. More like a frame or scene or whatever.
"
Class {
	#name : #RtBatchRenderer,
	#superclass : #Canvas,
	#instVars : [
		'transform',
		'clipRect',
		'bounds',
		'transformIndex',
		'clipRectIndex',
		'zIndex',
		'transientStoreF',
		'transientStoreI',
		'persistentStoreF',
		'colorStore',
		'vao',
		'quadVBO',
		'quadEBO',
		'colorToIndexTable',
		'glyphStore',
		'fontCache',
		'projectionMatrix',
		'imageStore',
		'formCache',
		'imageAllocation',
		'batchTypes',
		'opaqueRectangleType',
		'translucentRectangleType',
		'textRunType',
		'opaqueImageType',
		'translucentImageType',
		'instanceVBOManager',
		'lastTranslucentType',
		'closedTranslucentBatches',
		'translucentBatchPool',
		'displayScanner',
		'clipStack',
		'transformStack',
		'currentNode'
	],
	#pools : [
		'GLConstants',
		'PicConstants'
	],
	#category : #'RenderThee-Batching',
	#'squeak_changestamp' : 'stlu 4/17/2022 11:06'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 12/10/2021 16:11'
}
RtBatchRenderer class >> bounds: aRectangle [

	^ self basicNew
		initializeWithBounds: aRectangle;
		yourself
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:30'
}
RtBatchRenderer >> allocateClipRect: aRectangle [

	^ transientStoreF
		add: aRectangle left asFloat
		add: aRectangle top asFloat
		add: aRectangle right asFloat
		add: aRectangle bottom asFloat
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/23/2021 16:54'
}
RtBatchRenderer >> allocateTransform: aTransform [

	^ transientStoreF
		add: aTransform a11
		add: aTransform a21
		add: aTransform a12
		add: aTransform a22
		add: aTransform a13
		add: aTransform a23
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 1/4/2022 17:08'
}
RtBatchRenderer >> allocationForForm: aForm [

	^ imageAllocation
	"^ formCache at: aForm ifAbsentPut: [
		imageStore uploadForm: aForm]."
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:51'
}
RtBatchRenderer >> batchesDo: aBlock [

	self opaqueBatchesDo: aBlock.
	self translucentBatchesDo: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:09'
}
RtBatchRenderer >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 18:17'
}
RtBatchRenderer >> bounds: aRectangle [

	bounds ~= aRectangle ifTrue: [
		bounds := aRectangle.
		projectionMatrix := self projectionMatrixForBounds: aRectangle].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/17/2022 15:15'
}
RtBatchRenderer >> clear [

	GL clearColor: self clearColor.
	GL depthMask: GL_TRUE.
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:43'
}
RtBatchRenderer >> clearColor [

	^ Color
		h: Time utcMicrosecondClock / 2e3 \\ 360.0
		s: 1.0
		v: 1.0
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 4/17/2022 12:43'
}
RtBatchRenderer >> clipBy: aRectangle during: aBlock [

	| newClipRect previousClipRect previousClipRectIndex |
	newClipRect := clipRect intersect: aRectangle.
	newClipRect hasPositiveExtent ifFalse: [^ self].
	
	previousClipRect := clipRect.
	clipRect := newClipRect.
	previousClipRectIndex := clipRectIndex.
	clipRectIndex := self allocateClipRect: clipRect.
	
	[aBlock value: self] ensure: [
		clipRect := previousClipRect.
		clipRectIndex := previousClipRectIndex].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchRenderer >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 15:16'
}
RtBatchRenderer >> clipRectIndex [

	^ clipRectIndex
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:52'
}
RtBatchRenderer >> draw [

	transientStoreF texture bindAt: 1.
	transientStoreI texture bindAt: 2.
	persistentStoreF texture bindAt: 3.
	colorStore texture bindAt: 5.
	glyphStore texture bindAt: 6.
	imageStore texture bindAt: 7.
	
	transientStoreF upload.
	transientStoreI upload.
	persistentStoreF upload.
	colorStore upload.
	
	batchTypes do: [:each |
		each program uniforms uProjectionMatrix: self projectionMatrix].
	
	GL enable: GL_CULL_FACE.
	GL cullFace: GL_BACK.
	GL frontFace: GL_CW.
	
	GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS.
	GL depthMask: GL_TRUE.
	GL disable: GL_BLEND.
	
	self batchesDo: [:batch |
		instanceVBOManager storeBatch: batch].
	
	self opaqueBatchesDo: [:batch |
		self drawBatch: batch].
	
	GL depthMask: GL_FALSE.
	GL enable: GL_BLEND.
	GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
	
	self translucentBatchesDo: [:batch |
		self drawBatch: batch].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:14'
}
RtBatchRenderer >> drawBatch: aBatch [

	(vao vertexBufferBindingAt: 1)
		buffer: aBatch instanceVBO
		offset: aBatch instanceVBOOffset.
	aBatch program use.
	vao
		drawElements: GL_TRIANGLES
		numVertices: 6
		indexType: GL_UNSIGNED_BYTE
		numInstances: aBatch size.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 4/17/2022 16:19'
}
RtBatchRenderer >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	self fillRectangle: (Rectangle origin: aForm extent: sourceRect extent) color: Color orange.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 4/17/2022 16:11'
}
RtBatchRenderer >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	vertices size >= 2 ifFalse: [^ self].
	
	self
		frameAndFillRectangle: (Rectangle encompassing: vertices)
		fillColor: aColor
		borderWidth: bw
		borderColor: bc.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/2/2022 12:11'
}
RtBatchRenderer >> drawString: aString from: firstIndex to: lastIndex at: aPoint font: fontOrNil color: aColor [

	| font right colorIndex glyphCache textRunIndex batch textRunBoundsIndex visibleLeft visibleRight |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	self upcomingTranslucentType: textRunType.
	batch := textRunType currentBatch.
	colorIndex := self indexForColor: aColor.
	glyphCache := fontCache at: font ifAbsentPut: [Dictionary new].
	textRunIndex := transientStoreI
		add: clipRectIndex
		add: transformIndex
		add: colorIndex
		add: zIndex.
	textRunBoundsIndex := transientStoreF
		add: aPoint x asFloat
		add: aPoint y asFloat.
	
	zIndex := zIndex + 1. "should be the same within a paragraph"
	visibleLeft := clipRect left - aPoint x.
	visibleRight := clipRect right - aPoint x.
	right := 0.
	0 to: lastIndex - firstIndex do: [:charIndex |
		| char width |
		char := aString at: firstIndex + charIndex.
		width := font widthOf: char.
		(right := right + width) > visibleLeft ifTrue: [
			| glyph |
			transientStoreF addUnaligned: right asFloat.
			glyph := self glyphForCharacter: char inFont: font cache: glyphCache.
			batch
				addInstance: textRunIndex
				with: charIndex
				with: glyph second
				with: textRunBoundsIndex].
		right >= visibleRight ifTrue: [
			transientStoreF alignElementIndex. ^ self]].
	transientStoreF alignElementIndex.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:32'
}
RtBatchRenderer >> drawString: aString from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: aColor [

	self pushClipRect: boundsRect.
	self
		drawString: aString
		from: firstIndex
		to: lastIndex
		at: boundsRect origin
		font: fontOrNil
		color: aColor.
	self popClipRect.
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 4/17/2022 16:31'
}
RtBatchRenderer >> fillOval: aRectangle color: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: aRectangle
		fillColor: fillColor
		borderWidth: borderWidth
		borderColor: borderColor.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/20/2022 12:52'
}
RtBatchRenderer >> fillRectangle: aRectangle color: aColor [

	self fillRectangle: aRectangle color: aColor radius: 0.0.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/20/2022 12:54'
}
RtBatchRenderer >> fillRectangle: aRectangle color: aColor radius: radius [

	| type |
	type := aColor isTranslucent
		ifFalse: [opaqueRectangleType]
		ifTrue: [
			self upcomingTranslucentType: translucentRectangleType.
			translucentRectangleType].
	
	self
		rectangleBatch: type currentBatch
		left: aRectangle left asFloat
		top: aRectangle top asFloat
		right: aRectangle right asFloat
		bottom: aRectangle bottom asFloat
		radius: radius asFloat
		color: (self indexForColor: aColor).
	zIndex := zIndex + 1.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/2/2022 12:15'
}
RtBatchRenderer >> fillRectangle: aRectangle fillStyle: aFillStyle [

	super fillRectangle: aRectangle fillStyle: aFillStyle.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 13:25'
}
RtBatchRenderer >> fontCache [

	^ fontCache
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 4/21/2022 17:39'
}
RtBatchRenderer >> frameAndFillRectangle: aRectangle fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self fillRectangle: (aRectangle insetBy: borderWidth) color: fillColor.
	self frameRectangle: aRectangle width: borderWidth color: borderColor.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 4/21/2022 17:38'
}
RtBatchRenderer >> frameRectangle: aRectangle width: borderWidth color: borderColor [

	| outerTop outerBot outerLeft outerRight innerTop innerBot innerLeft innerRight inset colorIndex type batch |
	outerTop := aRectangle top asFloat.
	outerBot := aRectangle bottom asFloat.
	outerLeft := aRectangle left asFloat.
	outerRight := aRectangle right asFloat.
	inset := borderWidth asFloat.
	innerTop := outerTop + inset.
	innerBot := outerBot - inset.
	innerLeft := outerLeft + inset.
	innerRight := outerRight - inset.
	
	type := borderColor isTranslucent
		ifFalse: [opaqueRectangleType]
		ifTrue: [
			self upcomingTranslucentType: translucentRectangleType.
			translucentRectangleType].
	batch := type currentBatch.
	colorIndex := (self indexForColor: borderColor).
	
	self
		rectangleBatch: batch
		left: outerLeft top: outerTop right: innerRight bottom: innerTop
		radius: 0.0 color: colorIndex;
		rectangleBatch: batch
		left: innerRight top: outerTop right: outerRight bottom: innerBot
		radius: 0.0 color: colorIndex;
		rectangleBatch: batch
		left: innerLeft top: innerBot right: outerRight bottom: outerBot
		radius: 0.0 color: colorIndex;
		rectangleBatch: batch
		left: outerLeft top: innerTop right: innerLeft bottom: outerBot
		radius: 0.0 color: colorIndex.
	
	zIndex := zIndex + 1.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 4/21/2022 19:38'
}
RtBatchRenderer >> glyphForCharacter: aCharacter inFont: aFont cache: glyphCache [

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
		allocation := glyphStore uploadForm: form.
		glyphBounds := allocation rectangle origin extent: form extent.
		glyphIndex := persistentStoreF
			add: glyphBounds left asFloat
			add: glyphBounds top asFloat
			add: glyphBounds right asFloat
			add: glyphBounds bottom asFloat.
		{ allocation . glyphIndex }].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:00'
}
RtBatchRenderer >> glyphStore [

	^ glyphStore
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 4/21/2022 22:19'
}
RtBatchRenderer >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self fillRectangle: (Rectangle origin: aPoint extent: sourceRect extent) color: Color random.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/4/2022 15:10'
}
RtBatchRenderer >> imageStore [

	^ imageStore
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/25/2021 10:42'
}
RtBatchRenderer >> indexForColor: aColor [

	^ colorToIndexTable
		at: aColor
		ifAbsentPut: [
			colorStore add: (aColor pixelValueForDepth: 32)]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/21/2022 18:25'
}
RtBatchRenderer >> initializeBatches [

	batchTypes := {
		opaqueRectangleType := RtOpaqueRectangleBatchType new.
		opaqueImageType := RtOpaqueImageBatchType new.
		textRunType := RtTextRunBatchType new.
		translucentRectangleType := RtTranslucentRectangleBatchType new.
		translucentImageType := RtTranslucentImageBatchType new}.
	
	batchTypes do: [:each |
		| program |
		program := GLProgram
			vertexSource: each vertexShader
			fragmentSource: each fragmentShader.
	
		program uniforms
			atName: 'sTransientStoreF' ifPresent: [:u | u value: 1];
			atName: 'sTransientStoreI' ifPresent: [:u | u value: 2];
			atName: 'sPersistentStoreF' ifPresent: [:u | u value: 3];
			"atName: 'sTransientStoreF' ifPresent: [:u | u value: 4];"
			atName: 'sColorStore' ifPresent: [:u | u value: 5];
			atName: 'sGlyphStore' ifPresent: [:u | u value: 6];
			atName: 'sImageStore' ifPresent: [:u | u value: 7].
		
		each program: program].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/25/2021 10:42'
}
RtBatchRenderer >> initializeColors [

	colorToIndexTable := Dictionary new.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/4/2022 17:09'
}
RtBatchRenderer >> initializeGPUStores [

	| texSize |
	self flag: #todo. "choose texSize based on GL maxTextureSize"
	texSize := 512. "square textures have performance benefits on Intel GPUs"
	transientStoreF := RtFloat4Texture extent: texSize @ texSize.
	transientStoreI := RtInt4Texture extent: texSize @ texSize.
	persistentStoreF := RtFloat4Texture extent: texSize @ texSize.
	colorStore := RtColorTexture extent: texSize @ texSize.
	glyphStore := RtManagedGPUStore extent: texSize @ texSize.
	imageStore := RtManagedGPUStore extent: texSize @ texSize.
	imageAllocation := imageStore uploadForm: (ToolIcons iconNamed: #arrowUp).
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:33'
}
RtBatchRenderer >> initializeQuadVBO [

	quadVBO := GLBuffer create.
	quadVBO usage: GL_STATIC_DRAW data: #(
			0.0 0.0	"top-left"
			1.0 0.0	"top-right"
			0.0 1.0	"bottom-left"
			1.0 1.0	"bottom-right"
		) asFloat32Array.
	
	quadEBO := GLBuffer create.
	quadEBO usage: GL_STATIC_DRAW data: #[0 1 2 2 1 3].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/10/2021 13:42'
}
RtBatchRenderer >> initializeVAO [

	vao := GLVertexArray create.
	vao boundDuring: [
		vao elementArrayBuffer: quadEBO.
		
		(vao vertexAttributeAt: 0)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 0;
			associateVertexBufferBindingAt: 0.
		
		(vao vertexAttributeAt: 1)
			enable;
			formatAsInteger: GL_UNSIGNED_INT numComponents: 4 offset: 0;
			associateVertexBufferBindingAt: 1.
		
		(vao vertexBufferBindingAt: 0) buffer: quadVBO stride: 2 * 4.
		(vao vertexBufferBindingAt: 1) instanceDivisor: 1].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2022 13:42'
}
RtBatchRenderer >> initializeWithBounds: aRectangle [

	self bounds: aRectangle.
	
	self initializeGPUStores.
	self initializeQuadVBO.
	self initializeVAO.
	self initializeBatches.
	self initializeColors.
	
	instanceVBOManager := RtInstanceVBOManager new.
	closedTranslucentBatches := OrderedCollection new.
	fontCache := IdentityDictionary new.
	self flag: #todo. "extract PicObjectPool to shared dependency"
	translucentBatchPool := PicObjectPool instantiation: [RtTranslucentBatch new].
	displayScanner := RtDisplayScanner new canvas: self.
	
	clipStack := OrderedCollection new.
	transformStack := OrderedCollection new.
	
	self reset.
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 4/17/2022 16:33'
}
RtBatchRenderer >> line: pt1 to: pt2 width: width color: aColor [

	self fillRectangle: (pt1 rect: pt2) color: aColor.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:50'
}
RtBatchRenderer >> opaqueBatchesDo: aBlock [

	batchTypes do: [:type |
		type isTranslucent ifFalse: [| batch |
			(batch := type currentBatch) size > 0 ifTrue: [
				aBlock value: batch]]].
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 4/21/2022 18:37'
}
RtBatchRenderer >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	self fillRectangle: (Rectangle origin: aPoint extent: sourceRect extent) color: Color red.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/2/2022 12:11'
}
RtBatchRenderer >> paragraph: aParagraph bounds: bounds color: aColor [

	displayScanner
		reset;
		text: aParagraph text textStyle: aParagraph textStyle;
		textColor: aColor.

	aParagraph displayOn: self using: displayScanner at: bounds topLeft.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:01'
}
RtBatchRenderer >> persistentStoreF [

	^ persistentStoreF
]

{
	#category : #stacking,
	#'squeak_changestamp' : 'stlu 5/21/2022 12:27'
}
RtBatchRenderer >> popClipRect [

	RectanglePool return: clipRect.
	clipRectIndex := clipStack removeLast.
	clipRect := clipStack removeLast.
]

{
	#category : #stacking,
	#'squeak_changestamp' : 'stlu 5/21/2022 12:29'
}
RtBatchRenderer >> popTransform [

	RectanglePool return: clipRect.
	clipRectIndex := clipStack removeLast.
	clipRect := clipStack removeLast.
	
	TransformPool return: transform.
	transformIndex := transformStack removeLast.
	transform := transformStack removeLast.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 18:17'
}
RtBatchRenderer >> projectionMatrix [

	^ projectionMatrix
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 18:16'
}
RtBatchRenderer >> projectionMatrixForBounds: aRectangle [

	^ Matrix4x4
		ortho: aRectangle
		near: 1 - (2 ** 24)
		far: 0
]

{
	#category : #stacking,
	#'squeak_changestamp' : 'stlu 5/21/2022 12:27'
}
RtBatchRenderer >> pushClipRect: aRectangle [

	clipStack addLast: clipRect.
	clipStack addLast: clipRectIndex.
	
	clipRect := RectanglePool borrow rectangle: clipRect.
	clipRect setIntersect: aRectangle.
	clipRectIndex := self allocateClipRect: clipRect.
]

{
	#category : #stacking,
	#'squeak_changestamp' : 'stlu 5/21/2022 12:30'
}
RtBatchRenderer >> pushTransform: aMatrix2x3 [

	clipStack addLast: clipRect.
	clipStack addLast: clipRectIndex.
	transformStack addLast: transform.
	transformStack addLast: transformIndex.
	
	clipRect := aMatrix2x3 globalBounds: clipRect toLocal: RectanglePool borrow.
	clipRectIndex := self allocateClipRect: clipRect.
	
	transform := TransformPool borrow setToMatrix2x3: transform.
	transform composeWithLocal: aMatrix2x3.
	transformIndex := self allocateTransform: transform.
]

{
	#category : #stacking,
	#'squeak_changestamp' : 'stlu 5/21/2022 12:28'
}
RtBatchRenderer >> pushTranslation: aPoint [

	clipStack addLast: clipRect.
	clipStack addLast: clipRectIndex.
	transformStack addLast: transform.
	transformStack addLast: transformIndex.
	
	clipRect := RectanglePool borrow rectangle: clipRect.
	clipRect setTranslateByNegated: aPoint.
	clipRectIndex := self allocateClipRect: clipRect.
	
	transform := TransformPool borrow setToMatrix2x3: transform.
	transform translateBy: aPoint.
	transformIndex := self allocateTransform: transform.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 4/21/2022 18:32'
}
RtBatchRenderer >> rectangleBatch: aBatch left: left top: top right: right bottom: bottom radius: radius color: colorIndex [

	| storeIndex |
	storeIndex := transientStoreF
		add: left
		add: top
		add: right
		add: bottom
		add: radius
		add: zIndex asFloat.
	aBatch
		addInstance: storeIndex
		with: clipRectIndex
		with: transformIndex
		with: colorIndex.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:28'
}
RtBatchRenderer >> render: aPicture [

	self reset.
	aPicture drawOn: self.
	self clear.
	self draw.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:29'
}
RtBatchRenderer >> renderBenched: aPicture [

	| canvas |
	self reset.
	canvas := RtBenchmarkingCanvas canvas: self.
	aPicture drawOn: canvas.
	self clear.
	self draw.
	^ canvas
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/21/2022 22:11'
}
RtBatchRenderer >> renderMorph: aMorph [

	self reset.
	self fullDrawMorph: aMorph.
	self clear.
	self draw.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2022 15:11'
}
RtBatchRenderer >> reset [

	transientStoreF reset.
	transientStoreI reset.
	
	clipStack reset.
	clipRect ifNil: [clipRect := RectanglePool borrow].
	clipRect rectangle: bounds.
	
	transformStack reset.
	transform ifNil: [transform := TransformPool borrow].
	transform setIdentity.
	
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	zIndex := 0.
	
	batchTypes do: [:type |
		type currentBatch reset].
	lastTranslucentType := nil.
	closedTranslucentBatches do: [:batch |
		batch reset.
		translucentBatchPool return: batch].
	closedTranslucentBatches reset.
	instanceVBOManager reset.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchRenderer >> transform [

	^ transform
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 4/22/2022 21:56'
}
RtBatchRenderer >> transformBy: aTransform during: aBlock [

	| newClipRect previousTransform previousClipRect previousTransformIndex previousClipRectIndex |
	aTransform isIdentity ifTrue: [^ aBlock value: self].
	
	newClipRect := (aTransform globalBoundsToLocal: clipRect) expanded.
	newClipRect hasPositiveExtent ifFalse: [^ self].
	previousClipRect := clipRect.
	clipRect := newClipRect.
	
	previousTransform := transform.
	transform := transformsPool isEmpty
		ifTrue: [previousTransform shallowCopy]
		ifFalse: [transformsPool removeLast setTo: previousTransform].
	transform composeWithLocal: aTransform asMatrix2x3.
	
	previousTransformIndex := transformIndex.
	previousClipRectIndex := clipRectIndex.
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	
	[aBlock value: self] ensure: [
		transformsPool addLast: transform.
		transform := previousTransform.
		transformIndex := previousTransformIndex.
		clipRect := previousClipRect.
		clipRectIndex := previousClipRectIndex].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 15:16'
}
RtBatchRenderer >> transformIndex [

	^ transformIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:17'
}
RtBatchRenderer >> transientStoreF [

	^ transientStoreF
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:12'
}
RtBatchRenderer >> transientStoreI [

	^ transientStoreI
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 4/22/2022 21:46'
}
RtBatchRenderer >> translateBy: aPoint during: aBlock [

	| previousTransform previousClipRect previousTransformIndex previousClipRectIndex |
	aPoint isZero ifTrue: [^ aBlock value: self].
	
	previousClipRect := clipRect.
	clipRect := clipRect translateBy: aPoint negated.
	
	previousTransform := transform.
	transform := transformsPool isEmpty
		ifTrue: [previousTransform shallowCopy]
		ifFalse: [transformsPool removeLast setTo: previousTransform].
	transform translateBy: aPoint.
	
	previousTransformIndex := transformIndex.
	previousClipRectIndex := clipRectIndex.
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	
	[aBlock value: self] ensure: [
		transformsPool addLast: transform.
		transform := previousTransform.
		transformIndex := previousTransformIndex.
		clipRect := previousClipRect.
		clipRectIndex := previousClipRectIndex].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:54'
}
RtBatchRenderer >> translucentBatchesDo: aBlock [

	closedTranslucentBatches do: aBlock.
	lastTranslucentType ifNotNil: [:type |
		aBlock value: type currentBatch].
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 4/21/2022 18:37'
}
RtBatchRenderer >> translucentImage: aForm at: aPoint sourceRect: sourceRect [

	self fillRectangle: (Rectangle origin: aPoint extent: sourceRect extent) color: Color yellow.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/20/2022 13:27'
}
RtBatchRenderer >> upcomingTranslucentType: aBatchType [

	lastTranslucentType ~~ aBatchType ifTrue: [
		lastTranslucentType ifNotNil: [| newBatch |
			closedTranslucentBatches addLast: lastTranslucentType currentBatch.
			newBatch := translucentBatchPool borrow.
			newBatch type: lastTranslucentType.
			lastTranslucentType currentBatch: newBatch].
		lastTranslucentType := aBatchType].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:18'
}
RtBatchRenderer >> vao [

	^ vao
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/20/2022 12:52'
}
RtBatchRenderer >> visitAll: beginNode [

	self visitAll: beginNode until: nil.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/20/2022 12:52'
}
RtBatchRenderer >> visitAll: beginNode until: endNode [
	"begin inclusive, end exclusive"
	currentNode := beginNode.
	currentNode acceptVisitor: self.
	[endNode ~~ (currentNode := currentNode next)] whileTrue: [
		currentNode acceptVisitor: self].
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:26'
}
RtBatchRenderer >> visitClipBegin: aNode [

	self pushClipRect: aNode clipRect.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:27'
}
RtBatchRenderer >> visitClipEnd: aNode [

	self popClipRect.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:33'
}
RtBatchRenderer >> visitImage: aNode [

	self fillRectangle: aNode bounds color: Color red.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/20/2022 12:55'
}
RtBatchRenderer >> visitLine: aNode [

	self fillRectangle: aNode bounds color: aNode color.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:22'
}
RtBatchRenderer >> visitOval: aNode [

	self visitRectangle: aNode.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:34'
}
RtBatchRenderer >> visitParagraph: aNode [

	aNode drawOn: self.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:30'
}
RtBatchRenderer >> visitPictureBegin: aNode [

	self pushTranslation: aNode offset.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:31'
}
RtBatchRenderer >> visitPictureEnd: aNode [

	self popTransform.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:22'
}
RtBatchRenderer >> visitPolygon: aNode [

	self visitRectangle: aNode.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:20'
}
RtBatchRenderer >> visitRectangle: aNode [

	| fillStyle borderStyle |
	fillStyle := aNode fillStyle.
	borderStyle := aNode borderStyle.
	
	fillStyle ifNotNil: [| rect |
		rect := aNode bounds.
		borderStyle ifNotNil: [
			rect := aNode bounds insetBy: borderStyle width].
		self fillRectangle: rect color: fillStyle asColor].
	
	borderStyle ifNotNil: [
		self frameRectangle: aNode bounds width: borderStyle width color: borderStyle color].
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:46'
}
RtBatchRenderer >> visitRoundedRectangle: aNode [

	| fillStyle borderStyle |
	fillStyle := aNode fillStyle.
	borderStyle := aNode borderStyle.
	
	fillStyle ifNotNil: [| rect |
		rect := aNode bounds.
		borderStyle ifNotNil: [
			rect := aNode bounds insetBy: borderStyle width].
		self fillRectangle: rect color: fillStyle asColor radius: aNode radius].
	
	borderStyle ifNotNil: [
		self frameRectangle: aNode bounds width: borderStyle width color: borderStyle color].
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:33'
}
RtBatchRenderer >> visitTextRun: aNode [

	aNode drawOn: self.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:29'
}
RtBatchRenderer >> visitTransformBegin: aNode [

	self pushTransform: aNode matrix.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:29'
}
RtBatchRenderer >> visitTransformEnd: aNode [

	self popTransform.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:28'
}
RtBatchRenderer >> visitTranslationBegin: aNode [

	self pushTranslation: aNode translation.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/21/2022 12:29'
}
RtBatchRenderer >> visitTranslationEnd: aNode [

	self popTransform.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:13'
}
RtBatchRenderer >> zIndex [

	^ zIndex
]
