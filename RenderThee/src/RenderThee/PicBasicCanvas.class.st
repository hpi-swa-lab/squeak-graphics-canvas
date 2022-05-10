"
I am a canvas that builds incoming draw commands into an object representation.
I ignore draw calls that do not have any effect (e.g. transparent fill color and no border).
My root is a `PicGroup`.
"
Class {
	#name : #PicBasicCanvas,
	#superclass : #Canvas,
	#instVars : [
		'transform',
		'clipRect',
		'groupStack'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 4/19/2022 15:30'
}
PicBasicCanvas class >> example1 [

	(PicBasicCanvas new fullDrawMorph: ActiveWorld) getPicture open.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 15:42'
}
PicBasicCanvas >> addNode: aNode [
	"Adds aNode to the currently active group (at the front-most z-coordinate)."
	self currentGroup addChild: aNode.
]

{
	#category : #'balloon-compat',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:29'
}
PicBasicCanvas >> asBalloonCanvas [

	^ self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> clear [
	"Forget all contents of the current picture except for the current group stack."
	groupStack do: [:group | group removeAllChildren]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:11'
}
PicBasicCanvas >> clipBy: aRectangle during: aBlock [

	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	
	^ self group: (PicClipGroup rect: aRectangle) during: [
		self clipRect: (aRectangle intersect: clipRect) during: aBlock]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 4/28/2022 14:11'
}
PicBasicCanvas >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	^ [aBlock value: self]
		ensure: [clipRect := previousClipRect]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> currentGroup [
	"Answers the PicGroup to which all draw commands are currently added."
	^ groupStack last
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	self
		drawPolygon: vertices
		fillStyle: (SolidFillStyle color: aColor)
		borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:33'
}
PicBasicCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	vertices ifEmpty: [^ self].
	(aFillStyle isTransparent and: [aBorderStyle isTransparent]) ifTrue: [^ self].

	self addNode: (PicPolygonPrim new
		vertices: vertices;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself).
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 9/27/2021 15:14'
}
PicBasicCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:34'
}
PicBasicCanvas >> drawString: aString from: startIndex to: stopIndex at: topLeft font: fontOrNil color: aColor [

	aColor isTransparent ifTrue: [^ self].
	stopIndex < startIndex ifTrue: [^ self].

	self addNode: (PicStringPrim new
		contents: aString;
		startIndex: startIndex;
		stopIndex: stopIndex;
		position: topLeft;
		font: fontOrNil;
		color: aColor;
		yourself).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 4/21/2022 18:54'
}
PicBasicCanvas >> drawString: aString from: startIndex to: stopIndex in: boundsRect font: fontOrNil color: aColor [

	aColor isTransparent ifTrue: [^ self].
	stopIndex < startIndex ifTrue: [^ self].
	boundsRect hasPositiveExtent ifFalse: [^ self].

	self addNode: (PicStringPrim new
		contents: aString;
		startIndex: startIndex;
		stopIndex: stopIndex;
		position: boundsRect origin;
		maxExtent: boundsRect extent;
		font: fontOrNil;
		color: aColor;
		yourself).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	self
		fillOval: r
		fillStyle: (SolidFillStyle color: c)
		borderWidth: borderWidth
		borderColor: borderColor
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:33'
}
PicBasicCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(aFillStyle isTransparent and: [aBorderStyle isTransparent]) ifTrue: [^ self].
	aRectangle hasPositiveExtent ifFalse: [^ self].

	self addNode: (PicOvalPrim new
		bounds: aRectangle;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:33'
}
PicBasicCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(aFillStyle isTransparent and: [aBorderStyle isTransparent]) ifTrue: [^ self].
	aRectangle area isZero ifTrue: [^ self].

	self addNode: (PicRectanglePrim new
		bounds: aRectangle;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself).
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:33'
}
PicBasicCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	cornerRadius isZero ifTrue: [
		^ self
			frameAndFillRectangle: aRectangle
			fillStyle: aFillStyle
			borderStyle: aBorderStyle].

	(aFillStyle isTransparent and: [aBorderStyle isTransparent]) ifTrue: [^ self].
	aRectangle hasPositiveExtent ifFalse: [^ self].

	self addNode: (PicRoundedRectanglePrim new
		bounds: aRectangle;
		radius: cornerRadius;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself).
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

	self
		frameAndFillRoundRect: aRectangle
		radius: cornerRadius
		fillStyle: fillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/2/2022 15:31'
}
PicBasicCanvas >> getPicture [
	"Answers the picture as drawn up to this point. Returns an object of kind PicGroup.
	Creates a copy of all groups still on the group stack before combining them into the picture, so that the canvas can continue to be used afterwards."
	| child |
	self halt.
	child := nil.
	groupStack reverseDo: [:group |
		| parent |
		parent := group copy.
		child ifNotNil: [
			child hasChildren ifTrue: [
				parent addChild: child]].
		child := parent].
	^ child
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 9/27/2021 16:04'
}
PicBasicCanvas >> group: aGroup during: aBlock [
	"Scoped setter for `group` variable."
	groupStack addLast: aGroup.
	^ aBlock ensure: [
		| group |
		group := groupStack removeLast.
		group hasChildren ifTrue: [
			self addNode: group]]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:31'
}
PicBasicCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	sourceRect hasPositiveExtent ifFalse: [^ self].
	sourceRect origin <= aForm extent ifFalse: [^ self].

	self addNode: (PicImagePrim new
		form: aForm;
		origin: aPoint;
		sourceRect: sourceRect;
		combinationRule: rule;
		yourself).
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 10/13/2021 14:39'
}
PicBasicCanvas >> initialize [

	self reset.
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:32'
}
PicBasicCanvas >> line: from to: to width: width color: color [

	width isZero ifTrue: [^ self].
	color isTransparent ifTrue: [^ self].
	
	self addNode: (PicLinePrim new
		from: from;
		to: to;
		width: width;
		color: color;
		yourself).
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> origin [
	"Answers the global coordinate of the currently active local origin."
	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:32'
}
PicBasicCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	self addNode: (PicParagraphPrim new
		paragraph: aParagraph;
		bounds: aRectangle;
		color: aColor;
		yourself).
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> preserveStateDuring: aBlock [

	self unsupported: #preserveStateDuring.
	aBlock value: self
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/19/2022 15:38'
}
PicBasicCanvas >> reset [

	groupStack := OrderedCollection with: PicGroup new.
	transform := Matrix2x3 identity.
	clipRect := Rectangle infinite.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/2/2022 15:44'
}
PicBasicCanvas >> root [

	^ groupStack first
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	self flag: #todo.
	self unsupported: #'stencil:at:sourceRect:color:'
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> transform [
	"Answers the Matrix2x3 by which all drawing commands are currently transformed.
	Multiplication of all transforms active in the current scope."
	^ transform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> transform: anObject [

	transform := anObject
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 4/21/2022 18:10'
}
PicBasicCanvas >> transform: aTransform clipRect: aRectangle during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform previousClipRect |
	previousTransform := transform.
	previousClipRect := clipRect.
	transform := aTransform.
	clipRect := aRectangle.
	^ [aBlock value: self] ensure: [
		transform := previousTransform.
		clipRect := previousClipRect]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 4/21/2022 18:09'
}
PicBasicCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip matrix2x3 |
	aTransform isIdentity ifTrue: [^ aBlock value: self].
	
	matrix2x3 := aTransform asMatrix2x3.
	transformedClip := (matrix2x3 globalBoundsToLocal: clipRect) expanded.
	^ self group: (PicTransformGroup matrix: matrix2x3) during: [
		self
			transform: (transform composedWithLocal: matrix2x3)
			clipRect: transformedClip
			during: aBlock]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 4/23/2022 13:30'
}
PicBasicCanvas >> translateBy: aPoint during: aBlock [

	| transformedClip matrix2x3 |
	aPoint isZero ifTrue: [^ aBlock value: self].
	
	matrix2x3 := Matrix2x3 withOffset: aPoint.
	transformedClip := clipRect translateBy: aPoint negated.
	^ self group: (PicTransformGroup matrix: matrix2x3) during: [
		self
			transform: (transform translatedBy: aPoint)
			clipRect: transformedClip
			during: aBlock]
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:47'
}
PicBasicCanvas >> unsupported: selector [
	"Called whenever a currently not supported message of the Canvas interface is sent."
	self notify: 'Selector ' , selector storeString , ' not supported'.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicBasicCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo.
	self unsupported: #'warpImage:transform:at:sourceRect:cellSize:'
]
