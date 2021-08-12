Class {
	#name : #RtBatchingRenderer,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'clipRect',
		'bounds',
		'rectangleBatch',
		'transformIndex',
		'clipRectIndex',
		'transformsTexture',
		'primHeadersFTexture',
		'primHeadersITexture',
		'colorsTexture',
		'clipRectsTexture',
		'zIndex',
		'currentFrame'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:03'
}
RtBatchingRenderer >> allocateClipRect: aRectangle [

	^ (clipRectsTexture
		add: aRectangle left asFloat
		add: aRectangle top asFloat
		add: aRectangle width asFloat
		add: aRectangle height asFloat) / 4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:01'
}
RtBatchingRenderer >> allocateTransform: aTransform [

	^ (transformsTexture
		add: aTransform a11
		add: aTransform a21
		add: aTransform a12
		add: aTransform a22
		add: aTransform a13
		add: aTransform a23) / 8
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:09'
}
RtBatchingRenderer >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:08'
}
RtBatchingRenderer >> bounds: aRectangle [

	bounds := aRectangle.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:31'
}
RtBatchingRenderer >> currentFrame [

	^ currentFrame
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:31'
}
RtBatchingRenderer >> currentFrame: anObject [

	currentFrame := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/9/2021 09:23'
}
RtBatchingRenderer >> draw [

	GL clearColor: (Color h: Time utcMicrosecondClock / 1e3 \\ 360.0 s: 1.0 v: 1.0).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).

	primHeadersFTexture texture bindAt: 1.
	primHeadersITexture texture bindAt: 2.
	transformsTexture texture bindAt: 3.
	clipRectsTexture texture bindAt: 4.
	colorsTexture texture bindAt: 5.
	
	primHeadersFTexture upload.
	primHeadersITexture upload.
	transformsTexture upload.
	clipRectsTexture upload.
	colorsTexture upload.
	
	rectangleBatch isAlpha: true.
	rectangleBatch program uniforms uProjectionMatrix: self projectionMatrix.
	rectangleBatch draw.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 15:03'
}
RtBatchingRenderer >> frameAndFillRectangle: aRectangle radius: radius fillStyle: aFillStyle borderStyle: aBorderStyle [

	| left right top bottom |
	left := aRectangle left.
	right := aRectangle right.
	top := aRectangle top.
	bottom := aRectangle bottom.
	
	aFillStyle isTransparent ifFalse: [
		self
			rectangleLeft: left
			right: right
			top: top
			bottom: bottom
			radius: radius
			solidColor: (aFillStyle isBitmapFill ifTrue: [aFillStyle form colorAt: 1@1] ifFalse: [aFillStyle asColor])].
	
	aBorderStyle isTransparent ifFalse: [
		| borderWidth |
		borderWidth := aBorderStyle width.
		"left"
		self
			rectangleLeft: left
			right: left + borderWidth
			top: top
			bottom: bottom
			radius: 0.0
			solidColor: aBorderStyle color.
		"right"
		self
			rectangleLeft: right - borderWidth
			right: right
			top: top
			bottom: bottom
			radius: 0.0
			solidColor: aBorderStyle color.
		"top"
		self
			rectangleLeft: left
			right: right
			top: top
			bottom: top + borderWidth
			radius: 0.0
			solidColor: aBorderStyle color.
		"bottom"
		self
			rectangleLeft: left
			right: right
			top: bottom - borderWidth
			bottom: bottom
			radius: 0.0
			solidColor: aBorderStyle color].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 20:03'
}
RtBatchingRenderer >> initialize [

	| texSize |
	self flag: #todo. "choose texSize based on GL maxTextureSize"
	texSize := 512. "square textures have performance benefits on Intel GPUs"
	primHeadersFTexture := RtFloat4Texture extent: texSize @ texSize.
	primHeadersITexture := RtInt4Texture extent: texSize @ texSize.
	transformsTexture := RtFloat4Texture extent: texSize @ texSize.
	clipRectsTexture := RtFloat4Texture extent: texSize @ texSize.
	colorsTexture := RtColorTexture extent: texSize @ texSize.
	
	rectangleBatch := RtRectangleBatch new.
	rectangleBatch primHeadersFTexture: primHeadersFTexture.
	rectangleBatch primHeadersITexture: primHeadersITexture.
	rectangleBatch colorsTexture: colorsTexture.
	
	self reset.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/9/2021 09:20'
}
RtBatchingRenderer >> projectionMatrix [

	^ Matrix4x4
		ortho: bounds
		near: -100000 far: 0
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/25/2021 14:35'
}
RtBatchingRenderer >> quadVertices [

	^ #(
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			0.0 0.0	"top-left"
			
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			1.0 1.0	"bottom-right"
		) asFloat32Array
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 16:30'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom radius: radius solidColor: aColor [

	self assert: clipRect hasPositiveExtent.
	self assert: left <= right.
	self assert: top <= bottom.
	(left > clipRect right
		or: [right < clipRect left]
		or: [top > clipRect bottom]
		or: [bottom < clipRect top]) ifTrue: [^ self].
	rectangleBatch
		rectangle: (Rectangle left: left right: right top: top bottom: bottom)
		radius: radius
		fillColor: aColor
		clipRect: clipRectIndex
		transform: transformIndex
		z: zIndex.
	zIndex := zIndex + 1.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:58'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom solidColor: aColor [

	self rectangleLeft: left right: right top: top bottom: bottom radius: 0.0 solidColor: aColor
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/8/2021 10:35'
}
RtBatchingRenderer >> render: aPicture [

	self reset.
	self visit: aPicture.
	self draw.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/9/2021 09:22'
}
RtBatchingRenderer >> reset [

	primHeadersFTexture reset.
	primHeadersITexture reset.
	transformsTexture reset.
	clipRectsTexture reset.
	colorsTexture reset.
	
	self flag: #todo. "reset to bounds"
	clipRect := Rectangle infinite.
	transform := Matrix2x3 identity.
	
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	zIndex := 1.
	
	rectangleBatch reset.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> transform [

	^ transform
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitClip: aPicClip [

	| previousClipRect previousClipRectIndex |
	previousClipRect := clipRect.
	previousClipRectIndex := clipRectIndex.
	
	clipRect := clipRect intersect: aPicClip clipRect.
	clipRectIndex := self allocateClipRect: clipRect.
	
	self visitGroup: aPicClip.
	
	clipRect := previousClipRect.
	clipRectIndex := previousClipRectIndex.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 17:30'
}
RtBatchingRenderer >> visitGroup: aPicGroup [

	clipRect area <= 0 ifTrue: [^ self].
	aPicGroup children do: [:child |
		child acceptVisitor: self].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitImage: aPicImage [

	| form color |
	form := aPicImage form.
	color := Color red.
	"color := (form colorAt: 1@1).
	color isTransparent ifTrue: [
		color := form colorAt: form extent // 2]."
	self
		frameAndFillRectangle: aPicImage bounds
		radius: 0.0
		fillStyle: (SolidFillStyle color: color)
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:48'
}
RtBatchingRenderer >> visitMorph: aPicMorph [

	| dist |
	self visitGroup: aPicMorph.
	dist := currentFrame - aPicMorph invalidationStamp.
	dist < 15 ifTrue: [
		| color |
		color := Color green alpha: (15 - dist) / 15.0.
		self
			frameAndFillRectangle: aPicMorph bounds
			radius: 0.0
			fillStyle: (SolidFillStyle color: Color transparent)
			borderStyle: (SimpleBorder width: 1 color: color)].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitOval: aPicOval [

	self
		frameAndFillRectangle: aPicOval bounds
		radius: 0.0
		fillStyle: aPicOval fillStyle
		borderStyle: aPicOval borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:05'
}
RtBatchingRenderer >> visitParagraph: aPicParagraph [

	"| paragraph scanner |
	paragraph := aPicParagraph paragraph.
	scanner := GLCanvasDisplayScanner new
		text: paragraph text
		textStyle: paragraph textStyle
		foreground: aPicParagraph color
		background: Color transparent
		fillBlt: self
		ignoreColorChanges: false.
	
	paragraph displayOn: self using: scanner at: aPicParagraph bounds topLeft."
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitPolygon: aPicPolygon [

	self
		frameAndFillRectangle: aPicPolygon estimatedBounds
		radius: 0.0
		fillStyle: aPicPolygon fillStyle
		borderStyle: aPicPolygon borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:04'
}
RtBatchingRenderer >> visitRectangle: aPicRectangle [

	self
		frameAndFillRectangle: aPicRectangle bounds
		radius: 0.0
		fillStyle: aPicRectangle fillStyle
		borderStyle: aPicRectangle borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:04'
}
RtBatchingRenderer >> visitRoundedRectangle: aPicRoundedRectangle [

	self
		frameAndFillRectangle: aPicRoundedRectangle bounds
		radius: aPicRoundedRectangle radius
		fillStyle: aPicRoundedRectangle fillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 16:27'
}
RtBatchingRenderer >> visitString: aPicString [

	| font left top bottom bounds visibleLeft visibleTop visibleRight visibleBottom |
	false ifTrue: [^ self].
	font := aPicString font ifNil: [TextStyle defaultFont].
	bounds := aPicString bounds.
	
	top := bounds top.
	visibleTop := top max: clipRect top.
	bottom := bounds bottom.
	visibleBottom := (bottom min: top + font height) min: clipRect bottom.
	visibleTop >= visibleBottom ifTrue: [^ self].
	
	left := bounds left.
	visibleLeft := left max: clipRect left.
	visibleRight := bounds right min: clipRect right.
	visibleLeft >= visibleRight ifTrue: [^ self].
	
	aPicString from to: aPicString to do: [:index |
		| char width right |
		char := aPicString contents at: index.
		width := font widthOf: char.
		right := (left + width) min: visibleRight.
		right >= visibleLeft ifTrue: [
			self
				rectangleLeft: (left max: visibleLeft)
				right: right
				top: visibleTop
				bottom: visibleBottom
				solidColor: aPicString color].
		left := left + width.
		left >= visibleRight ifTrue: [^ self]]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:04'
}
RtBatchingRenderer >> visitTransform: aPicTransform [

	| previousTransform previousClipRect previousTransformIndex previousClipRectIndex |
	previousTransform := transform.
	previousClipRect := clipRect.
	previousTransformIndex := transformIndex.
	previousClipRectIndex := clipRectIndex.
	
	transform := transform * aPicTransform matrix.
	clipRect := (transform globalBoundsToLocal: clipRect) expanded.
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	
	self visitGroup: aPicTransform.
	
	transform := previousTransform.
	clipRect := previousClipRect.
	transformIndex := previousTransformIndex.
	clipRectIndex := previousClipRectIndex.
]
