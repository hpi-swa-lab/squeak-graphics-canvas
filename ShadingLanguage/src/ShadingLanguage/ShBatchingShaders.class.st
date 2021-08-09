Class {
	#name : #ShBatchingShaders,
	#superclass : #Object,
	#instVars : [
		'builtins',
		'aPosition',
		'aInstanceData',
		'vFillColor',
		'vCornerRadius',
		'vCenterOffset',
		'vExtent',
		'sPrimHeadersF',
		'sPrimHeadersI',
		'uProjectionMatrix',
		'sTransforms',
		'sClipRects',
		'sColors',
		'oColor'
	],
	#category : #'ShadingLanguage-Mockup'
}

{
	#category : #fetching,
	#'squeak_changestamp' : 'stlu 8/9/2021 13:31'
}
ShBatchingShaders >> addressOfCell: index numColumns: width [

	^ (index \\ width)
		@ (index / width)
]

{
	#category : #'anti-aliasing',
	#'squeak_changestamp' : 'stlu 8/9/2021 16:34'
}
ShBatchingShaders >> alphaForAARange: aaRange distance: signedDistance [

	| dist |
	dist := signedDistance * aaRange.
	^ 0.5 - dist clampLow: 0.0 high: 1.0
]

{
	#category : #'anti-aliasing',
	#'squeak_changestamp' : 'stlu 8/9/2021 16:31'
}
ShBatchingShaders >> computeAARange: position [

	| w |
	w := position fwidth.
	^ (0.5 * (w dot: w)) inverseSqrt
]

{
	#category : #declaration,
	#'squeak_changestamp' : 'stlu 8/9/2021 16:08'
}
ShBatchingShaders >> declareVariables [

	aPosition attribute; vec2; location: 0.
	aInstanceData attribute; ivec4; location: 1.
	
	self isFragmentShader ifTrue: [
		oColor output; vec4].
	
	vFillColor varying; vec4.
	vCenterOffset varying; vec4.
	vCornerRadius varying; float.
	vExtent varying; vec2.

	sPrimHeadersF uniform; sampler2D.
	sPrimHeadersI uniform; isampler2D.
	sTransforms uniform; sampler2D.
	sClipRects uniform; sampler2D.
	sColors uniform; sampler2D.
	
	uProjectionMatrix uniform; mat4x4.
]

{
	#category : #fetching,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:50'
}
ShBatchingShaders >> fetchClipRect: index [

	| address rawClipRect |
	address := self
		addressOfCell: index
		numColumns: self maxVertexTextureWidth.
	rawClipRect := sClipRects texelAt: address.
	^ ShRectangle
		origin: rawClipRect xy
		extent: rawClipRect zw
]

{
	#category : #fetching,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:50'
}
ShBatchingShaders >> fetchColor: index [

	| address |
	address := self
		addressOfCell: index
		numColumns: self maxVertexTextureWidth.
	^ sClipRects texelAt: address
]

{
	#category : #fetching,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:42'
}
ShBatchingShaders >> fetchPrimHeader: index [

	| address fData1 fData2 iData1 primHeader |
	address := self
		addressOfCell: index
		numColumns: self numPrimHeaderColumns.
	fData1 := sPrimHeadersF texelAt: address.
	fData2 := sPrimHeadersF texelAt: address offset: 1@0.
	iData1 := sPrimHeadersI texelAt: address.
	
	primHeader := ShPrimitiveHeader new.
	primHeader
		bounds: (ShRectangle origin: fData1 xy extent: fData1 zw);
		radius: fData2 x;
		colorIndex: iData1 x.
	^ primHeader
]

{
	#category : #fetching,
	#'squeak_changestamp' : 'stlu 8/9/2021 14:11'
}
ShBatchingShaders >> fetchTransform: index [

	| address t1 t2 |
	address := self
		addressOfCell: index
		numColumns: self numTransformColumns.
	t1 := sTransforms texelAt: address.
	t2 := sTransforms texelAt: address offset: 1@0.
	
	^ ShMat4x4 newFrom: {
		t1 x. t1 y. 0.0. 0.0.
		t1 z. t1 w. 0.0. 0.0.
		0.0. 0.0. 1.0. 0.0.
		t2 x. t2 y. 0.0. 1.0 }
]

{
	#category : #constants,
	#'squeak_changestamp' : 'stlu 8/9/2021 13:15'
}
ShBatchingShaders >> maxVertexTextureWidth [

	^ 512
]

{
	#category : #constants,
	#'squeak_changestamp' : 'stlu 8/9/2021 14:04'
}
ShBatchingShaders >> numPrimHeaderColumns [

	^ self maxVertexTextureWidth / 2
]

{
	#category : #constants,
	#'squeak_changestamp' : 'stlu 8/9/2021 13:41'
}
ShBatchingShaders >> numTransformColumns [

	^ self maxVertexTextureWidth / 2
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 16:22'
}
ShBatchingShaders >> rectangleFragmentShader [

	| aaRange dist color alpha |
	aaRange := self computeAARange: vCenterOffset.
	dist := self
			signedDistanceOf: vCenterOffset
			fromRoundedRectangle: vExtent
			radius: vCornerRadius.
	color := vFillColor.
	alpha := self alphaForAARange: aaRange distance: dist.
	oColor := color rgb @ (color a * alpha).
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 16:06'
}
ShBatchingShaders >> rectangleVertexShader [

	| primHeader modelMatrix clipRect z bounds clippedBounds vertexPosition halfExtent |
	primHeader := self fetchPrimHeader: aInstanceData x.
	modelMatrix := self fetchTransform: aInstanceData y.
	clipRect := self fetchClipRect: aInstanceData z.
	z := aInstanceData w float.
	
	bounds := primHeader bounds.
	clippedBounds := bounds intersect: clipRect.
	vFillColor := self fetchColor: primHeader colorIndex.
	vertexPosition := clippedBounds origin + (aPosition * clippedBounds extent).
	builtins gl_Position: uProjectionMatrix * modelMatrix * (vertexPosition @ z @ 1.0).
	
	halfExtent := 0.5 * bounds extent.
	vCornerRadius := primHeader radius.
	vExtent := halfExtent - vCornerRadius vec2.
	vCenterOffset := aPosition - 0.5 * bounds extent.
]

{
	#category : #'signed distance fields',
	#'squeak_changestamp' : 'stlu 8/9/2021 16:28'
}
ShBatchingShaders >> signedDistanceOf: centerOffset fromRoundedRectangle: halfRectExtent [

	| d |
	d := centerOffset abs - halfRectExtent.
	^ ((d max: 0.0 vec2)
		+ ((d x max: d y) min: 0.0)) length
]

{
	#category : #'signed distance fields',
	#'squeak_changestamp' : 'stlu 8/9/2021 16:24'
}
ShBatchingShaders >> signedDistanceOf: centerOffset fromRoundedRectangle: halfRectExtent radius: cornerRadius [

	^ (self
		signedDistanceOf: centerOffset
		fromRoundedRectangle: halfRectExtent) - cornerRadius
]
