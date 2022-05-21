"
I am a canvas that builds incoming draw commands into an object representation.
I ignore draw calls that do not have any effect (e.g. transparent fill color and no border).
My root is a `PicGroup`.
"
Class {
	#name : #PicRecordingCanvas,
	#superclass : #Canvas,
	#instVars : [
		'rect',
		'origin',
		'clipRect',
		'node',
		'frame'
	],
	#pools : [
		'PicConstants'
	],
	#category : #'RenderThee-Pictures',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 4/19/2022 15:30'
}
PicRecordingCanvas class >> example1 [

	(PicBasicCanvas new fullDrawMorph: ActiveWorld) getPicture open.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:08'
}
PicRecordingCanvas >> addNode: aNode [

	node ifNotNil: [
		node next: aNode.
		aNode previous: node].
	node := aNode.
]

{
	#category : #'balloon-compat',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:29'
}
PicRecordingCanvas >> asBalloonCanvas [

	^ self
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/19/2022 15:16'
}
PicRecordingCanvas >> clipBy: aRectangle during: aBlock [

	| previousClip beginNode |
	aRectangle hasPositiveExtent ifFalse: [^ self].
	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	(aRectangle intersects: clipRect) ifFalse: [^ self].
	
	self addNode: (beginNode := ClipBeginPool borrow clipRect: aRectangle).
	previousClip := clipRect.
	clipRect := aRectangle intersect: clipRect.
	[^ aBlock value: self] ensure: [
		clipRect := previousClip.
		node == beginNode
			ifTrue: [self removeLastNode]
			ifFalse: [self addNode: beginNode end]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicRecordingCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/17/2022 10:00'
}
PicRecordingCanvas >> clipRect: anObject [

	clipRect := anObject.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:57'
}
PicRecordingCanvas >> drawPolygon: vertices color: fillColor borderWidth: borderWidth borderColor: borderColor [

	| bounds prim fillStyle borderStyle |
	vertices isEmpty ifTrue: [^ self].
	
	fillStyle := (fillColor isNil or: [fillColor isTransparent])
		ifFalse: [SolidFillStyle color: fillColor].
	borderStyle := (borderColor isNil or: [borderWidth <= 0 or: [borderColor isTransparent]])
		ifFalse: [SimpleBorder width: borderWidth color: borderColor].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	bounds := Rectangle encompassing: vertices.
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := PolygonPrimPool borrow.
	prim vertices: vertices.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:58'
}
PicRecordingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	| bounds prim fillStyle borderStyle |
	vertices isEmpty ifTrue: [^ self].
	
	fillStyle := (aFillStyle isNil or: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (aBorderStyle isNil or: [aBorderStyle isTransparent])
		ifFalse: [aBorderStyle].
	(borderStyle isNil and: [vertices size < 3]) ifTrue: [^ self].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	bounds := Rectangle encompassing: vertices.
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := PolygonPrimPool borrow.
	prim vertices: vertices.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:58'
}
PicRecordingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| bounds prim fillStyle borderStyle |
	vertices isEmpty ifTrue: [^ self].
	
	fillStyle := (aFillStyle isNil or: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (borderColor isNil or: [borderWidth <= 0 or: [borderColor isTransparent]])
		ifFalse: [SimpleBorder width: borderWidth color: borderColor].
	(borderStyle isNil and: [vertices size < 3]) ifTrue: [^ self].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	bounds := Rectangle encompassing: vertices.
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := PolygonPrimPool borrow.
	prim vertices: vertices.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/19/2022 15:20'
}
PicRecordingCanvas >> drawString: aString from: startIndex to: stopIndex at: position font: fontOrNil color: textColor [

	| prim font |
	textColor ifNil: [^ self].
	textColor isTransparent ifTrue: [^ self].
	stopIndex < startIndex ifTrue: [^ self].
	
	font := fontOrNil ifNil: [TextStyle defaultFont].
	position x < clipRect right ifFalse: [^ self].
	position y < clipRect bottom ifFalse: [^ self].
	position y + font height > clipRect top ifFalse: [^ self].

	prim := TextRunPrimPool borrow.
	prim contents: aString.
	prim startIndex: startIndex.
	prim stopIndex: stopIndex.
	prim position: position.
	prim font: font.
	prim textColor: textColor.
	self addNode: prim.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/19/2022 15:20'
}
PicRecordingCanvas >> drawString: aString from: startIndex to: stopIndex in: boundsRect font: fontOrNil color: textColor [

	| prim font position |
	textColor ifNil: [^ self].
	textColor isTransparent ifTrue: [^ self].
	stopIndex < startIndex ifTrue: [^ self].
	boundsRect hasPositiveExtent ifFalse: [^ self].
	
	font := fontOrNil ifNil: [TextStyle defaultFont].
	position := boundsRect origin.
	position x < clipRect right ifFalse: [^ self].
	position y < clipRect bottom ifFalse: [^ self].
	position y + font height > clipRect top ifFalse: [^ self].
	boundsRect right > clipRect left ifFalse: [^ self].
	boundsRect bottom > clipRect top ifFalse: [^ self].

	prim := TextRunPrimPool borrow.
	prim contents: aString.
	prim startIndex: startIndex.
	prim stopIndex: stopIndex.
	prim position: position.
	prim maxExtent: boundsRect extent.
	prim font: font.
	prim textColor: textColor.
	self addNode: prim.
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:58'
}
PicRecordingCanvas >> fillOval: bounds color: fillColor borderWidth: borderWidth borderColor: borderColor [

	| prim fillStyle borderStyle |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (fillColor isNil or: [fillColor isTransparent])
		ifFalse: [SolidFillStyle color: fillColor].
	borderStyle := (borderColor isNil or: [borderWidth <= 0 or: [borderColor isTransparent]])
		ifFalse: [SimpleBorder width: borderWidth color: borderColor].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := OvalPrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:59'
}
PicRecordingCanvas >> fillOval: bounds fillStyle: aFillStyle borderStyle: aBorderStyle [

	| prim fillStyle borderStyle |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (aFillStyle isNil or: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (aBorderStyle isNil or: [aBorderStyle isTransparent])
		ifFalse: [aBorderStyle].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := OvalPrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:59'
}
PicRecordingCanvas >> fillOval: bounds fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| prim fillStyle borderStyle |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (aFillStyle isNil and: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (borderColor isNil or: [borderWidth <= 0 or: [borderColor isTransparent]])
		ifFalse: [SimpleBorder width: borderWidth color: borderColor].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := OvalPrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:01'
}
PicRecordingCanvas >> fillRectangle: bounds color: fillColor [

	| prim |
	fillColor ifNil: [^ self].
	fillColor isTransparent ifTrue: [^ self].
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := RectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: (SolidFillStyle color: fillColor).
	prim borderStyle: nil.
	self addNode: prim.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:01'
}
PicRecordingCanvas >> fillRectangle: bounds fillStyle: aFillStyle [

	| prim |
	aFillStyle ifNil: [^ self].
	aFillStyle isTransparent ifTrue: [^ self].
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := RectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: aFillStyle.
	prim borderStyle: nil.
	self addNode: prim.
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:01'
}
PicRecordingCanvas >> fillRoundRect: bounds radius: cornerRadius fillStyle: aFillStyle [

	| prim |
	cornerRadius > 0 ifFalse: [
		^ self fillRectangle: bounds fillStyle: aFillStyle].
	
	aFillStyle ifNil: [^ self].
	aFillStyle isTransparent ifTrue: [^ self].
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := RoundedRectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: aFillStyle.
	prim borderStyle: nil.
	prim radius: cornerRadius.
	self addNode: prim.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:24'
}
PicRecordingCanvas >> frame [

	^ frame
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:24'
}
PicRecordingCanvas >> frame: anObject [

	frame := anObject.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 16:59'
}
PicRecordingCanvas >> frameAndFillRectangle: bounds fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	| prim fillStyle borderStyle |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (fillColor isNil or: [fillColor isTransparent])
		ifFalse: [SolidFillStyle color: fillColor].
	borderStyle := (borderColor isNil or: [borderWidth <= 0 or: [borderColor isTransparent]])
		ifFalse: [SimpleBorder width: borderWidth color: borderColor].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := RectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:00'
}
PicRecordingCanvas >> frameAndFillRectangle: bounds fillStyle: aFillStyle borderStyle: aBorderStyle [

	| prim fillStyle borderStyle |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (aFillStyle isNil or: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (aBorderStyle isNil or: [aBorderStyle isTransparent])
		ifFalse: [aBorderStyle].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := RectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:00'
}
PicRecordingCanvas >> frameAndFillRoundRect: bounds radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	| prim fillStyle borderStyle |
	cornerRadius > 0 ifFalse: [
		^ self frameAndFillRectangle: bounds fillStyle: aFillStyle borderStyle: aBorderStyle].
	
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (aFillStyle isNil or: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (aBorderStyle isNil or: [aBorderStyle isTransparent])
		ifFalse: [aBorderStyle].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := RoundedRectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	prim radius: cornerRadius.
	self addNode: prim.
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:00'
}
PicRecordingCanvas >> frameAndFillRoundRect: bounds radius: cornerRadius fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| prim fillStyle borderStyle |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	fillStyle := (aFillStyle isNil and: [aFillStyle isTransparent])
		ifFalse: [aFillStyle].
	borderStyle := (borderColor isNil or: [borderWidth <= 0 or: [borderColor isTransparent]])
		ifFalse: [SimpleBorder width: borderWidth color: borderColor].
	(fillStyle isNil and: [borderStyle isNil]) ifTrue: [^ self].
	
	prim := cornerRadius > 0
		ifTrue: [RoundedRectanglePrimPool borrow radius: cornerRadius]
		ifFalse: [RectanglePrimPool borrow].
	prim bounds: bounds.
	prim fillStyle: fillStyle.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:00'
}
PicRecordingCanvas >> frameRectangle: bounds borderStyle: borderStyle [

	| prim |
	borderStyle ifNil: [^ self].
	borderStyle isTransparent ifTrue: [^ self].
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := RectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: nil.
	prim borderStyle: borderStyle.
	self addNode: prim.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:00'
}
PicRecordingCanvas >> frameRectangle: bounds width: borderWidth color: borderColor [

	| prim |
	borderColor ifNil: [^ self].
	borderColor isTransparent ifTrue: [^ self].
	borderWidth > 0 ifFalse: [^ self].
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := RectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: nil.
	prim borderStyle: (SimpleBorder width: borderWidth color: borderColor).
	self addNode: prim.
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:01'
}
PicRecordingCanvas >> frameRoundRect: bounds radius: cornerRadius borderStyle: aBorderStyle [

	| prim |
	cornerRadius > 0 ifFalse: [
		^ self frameRectangle: bounds borderStyle: aBorderStyle].
	
	aBorderStyle isTransparent ifTrue: [^ self].
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := RoundedRectanglePrimPool borrow.
	prim bounds: bounds.
	prim fillStyle: nil.
	prim borderStyle: aBorderStyle.
	prim radius: cornerRadius.
	self addNode: prim.
]

{
	#category : #'drawing-morphs',
	#'squeak_changestamp' : 'stlu 5/19/2022 14:08'
}
PicRecordingCanvas >> fullDrawMorph: aMorph [

	| picture |
	picture := aMorph picture.
	
	(picture isNil or: [picture needsUpdating]) ifFalse: [| offset |
		offset := aMorph position - picture captureBounds topLeft.
		((clipRect translateBy: offset) containsRect: picture captureClipRect) ifTrue: [
			picture isEmpty ifTrue: [^ self].
			self addNode: picture beginNode.
			node offset: offset.
			node := picture endNode.
			node next: nil.
			^ self]].
	
	picture
		ifNil: [aMorph picture: (picture := PicPicture new)]
		ifNotNil: [self reclaimPicture: picture].
	self addNode: picture beginNode.
	
	node offset: ZeroPointInt.
	picture captureBounds: aMorph bounds.
	picture captureClipRect: clipRect.
	picture lastUpdateTime: Time utcMicrosecondClock.
	picture lastUpdateFrame: frame.
	picture needsUpdating: false.
	
	aMorph fullDrawOn: self.
	
	node == picture beginNode
		ifTrue: ["picture is empty"
			picture beginNode next: picture endNode.
			picture endNode previous: picture beginNode.
			self removeLastNode]
		ifFalse: [
			self addNode: picture endNode.
			node next: nil].
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/19/2022 14:56'
}
PicRecordingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: blendRule [

	| prim bounds |
	sourceRect hasPositiveExtent ifFalse: [^ self].
	sourceRect origin <= aForm extent ifFalse: [^ self].
	
	bounds := aPoint extent: sourceRect extent.
	(bounds intersects: clipRect) ifFalse: [^ self].

	prim := ImagePrimPool borrow.
	prim bounds: bounds.
	prim form: aForm.
	prim origin: aPoint.
	prim sourceRect: sourceRect.
	prim combinationRule: blendRule.
	self addNode: prim.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 10/13/2021 14:39'
}
PicRecordingCanvas >> initialize [

	self reset.
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:30'
}
PicRecordingCanvas >> line: from to: to width: strokeWidth color: strokeColor [

	| prim bounds |
	strokeWidth > 0 ifFalse: [^ self].
	strokeColor ifNil: [^ self].
	strokeColor isTransparent ifTrue: [^ self].
	bounds := (from rect: to) outsetBy: strokeWidth + 1 // 2.
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := LinePrimPool borrow.
	prim bounds: bounds.
	prim from: from.
	prim to: to.
	prim width: strokeWidth.
	prim color: strokeColor.
	self addNode: prim.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:59'
}
PicRecordingCanvas >> node [

	^ node
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/12/2022 11:50'
}
PicRecordingCanvas >> origin [

	^ origin
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/19/2022 15:20'
}
PicRecordingCanvas >> paragraph: aParagraph bounds: bounds color: aColor [

	| prim |
	bounds hasPositiveExtent ifFalse: [^ self].
	(bounds intersects: clipRect) ifFalse: [^ self].
	
	prim := ParagraphPrimPool borrow.
	prim paragraph: aParagraph.
	prim bounds: bounds.
	prim color: aColor.
	self addNode: prim.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/13/2022 15:02'
}
PicRecordingCanvas >> preserveStateDuring: aBlock [

	self unsupported: #preserveStateDuring.
	aBlock value: self.
]

{
	#category : #'drawing-morphs',
	#'squeak_changestamp' : 'stlu 5/19/2022 14:26'
}
PicRecordingCanvas >> reclaimPicture: aPicture [

	
	| end node |
	end := aPicture endNode.
	node := aPicture beginNode next.
	[node ~~ end] whileTrue: [
		node isPictureBegin
			ifTrue: [node := node end next]
			ifFalse: [| next |
				next := node next.
				node reclaim.
				node := next]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:57'
}
PicRecordingCanvas >> removeLastNode [

	(node := node previous) ifNotNil: [
		node next: nil].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/18/2022 17:42'
}
PicRecordingCanvas >> reset [

	origin := ZeroPointInt.
	clipRect := InfiniteRectangle.
	frame := 0.
	node := nil.
	rect := RectanglePool borrow.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:01'
}
PicRecordingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	self flag: #todo.
	self unsupported: #'stencil:at:sourceRect:color:'.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/20/2022 15:30'
}
PicRecordingCanvas >> transformBy: aTransform during: aBlock [

	| previousClip previousOrigin beginNode |
	aTransform isIdentity ifTrue: [^ aBlock value: self].
	aTransform isPureTranslation ifTrue: [
		^ self translateBy: (aTransform localPointToGlobal: ZeroPointInt) during: aBlock].
	
	self addNode: (beginNode := TransformBeginPool borrow).
	beginNode matrix setToTransform: aTransform.
	
	previousClip := clipRect.
	previousOrigin := origin.
	clipRect := beginNode matrix globalBoundsToLocal: clipRect.
	origin := clipRect topLeft negated.
	[^ aBlock value: self] ensure: [
		clipRect := previousClip.
		origin := previousOrigin.
		node == beginNode
			ifTrue: [self removeLastNode]
			ifFalse: [self addNode: beginNode end]].
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/19/2022 15:03'
}
PicRecordingCanvas >> translateBy: aPoint during: aBlock [

	| previousClip previousOrigin beginNode |
	aPoint isZero ifTrue: [^ aBlock value: self].
	
	self addNode: (beginNode := TranslationBeginPool borrow translation: aPoint).
	previousOrigin := origin.
	previousClip := clipRect.
	clipRect := clipRect translateBy: aPoint negated.
	origin := origin translateBy: aPoint.
	[^ aBlock value: self] ensure: [
		clipRect := previousClip.
		origin := previousOrigin.
		node == beginNode
			ifTrue: [self removeLastNode]
			ifFalse: [self addNode: beginNode end]].
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:47'
}
PicRecordingCanvas >> unsupported: selector [
	"Called whenever a currently not supported message of the Canvas interface is sent."
	self notify: 'Selector ' , selector storeString , ' not supported'.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:01'
}
PicRecordingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo.
	self unsupported: #'warpImage:transform:at:sourceRect:cellSize:'.
]
