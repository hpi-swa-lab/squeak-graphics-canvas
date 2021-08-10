"
I am a canvas that builds incoming draw commands into an object representation.
I ignore draw calls that do not have any effect (e.g. transparent fill color and no border).
My root is a `PicGroup`.
"
Class {
	#name : #PicCanvas,
	#superclass : #Canvas,
	#instVars : [
		'transform',
		'clipRect',
		'groupStack',
		'ignoreClip'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 8/10/2021 14:53'
}
PicCanvas class >> example1 [

	(PicCanvas new fullDrawMorph: ActiveWorld) getPicture open
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> addCommand: aCommand [
	"Adds aCommand to the currently active group (at the front-most z-coordinate)."
	self currentGroup addChild: aCommand
]

{
	#category : #'balloon-compat',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:29'
}
PicCanvas >> asBalloonCanvas [

	^ self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> clear [
	"Forget all contents of the current picture except for the current group stack."
	groupStack do: [:group | group removeAllChildren]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 8/10/2021 15:31'
}
PicCanvas >> clipBy: aRectangle during: aBlock [

	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock cull: self].
	
	^ self group: (PicClip rect: aRectangle) during: [
		self clipRect: (aRectangle intersect: clipRect) during: aBlock]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:00'
}
PicCanvas >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	ignoreClip ifFalse: [clipRect := aRectangle].
	^ [aBlock cull: self]
		ensure: [clipRect := previousClipRect]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> currentGroup [
	"Answers the PicGroup to which all draw commands are currently added."
	^ groupStack last
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	self
		drawPolygon: vertices
		fillStyle: (SolidFillStyle color: aColor)
		borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:47'
}
PicCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	vertices ifEmpty: [^ self].

	self addCommand: (PicPolygon new
							vertices: vertices;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	vertices ifEmpty: [^ self].
	self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 8/10/2021 15:01'
}
PicCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	self addCommand: (PicString new
							contents: s;
							from: firstIndex;
							to: lastIndex;
							bounds: boundsRect;
							font: fontOrNil;
							color: c;
							yourself)
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	self
		fillOval: r
		fillStyle: (SolidFillStyle color: c)
		borderWidth: borderWidth
		borderColor: borderColor
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:47'
}
PicCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle extent isZero ifTrue: [^ self].

	self addCommand: (PicOval new
							bounds: aRectangle;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:48'
}
PicCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle area isZero ifTrue: [^ self].

	self addCommand: (PicRectangle new
							bounds: aRectangle;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:48'
}
PicCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle extent isZero ifTrue: [^ self].

	self addCommand: (PicRoundedRectangle new
							bounds: aRectangle;
							radius: cornerRadius;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

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
PicCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> getPicture [
	"Answers the picture as drawn up to this point. Returns an object of kind PicGroup.
	Creates a copy of all groups still on the group stack before combining them into the picture, so that the canvas can continue to be used afterwards."
	| child |
	child := nil.
	groupStack reverseDo: [:group |
		| parent |
		parent := group copy.
		child ifNotNil: [
			child isEmpty ifFalse: [
				parent addChild: child]].
		child := parent].
	^ child
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:01'
}
PicCanvas >> group: aGroup during: aBlock [
	"Scoped setter for `group` variable."
	groupStack addLast: aGroup.
	^ aBlock ensure: [
		| group |
		group := groupStack removeLast.
		group isEmpty ifFalse: [
			self addCommand: group]]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 15:33'
}
PicCanvas >> ignoreClip [

	^ ignoreClip
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 15:33'
}
PicCanvas >> ignoreClip: aBoolean [

	ignoreClip := aBoolean
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:46'
}
PicCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self addCommand: (PicImage new
							form: aForm;
							origin: aPoint;
							sourceRect: sourceRect;
							combinationRule: rule;
							yourself)
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/10/2021 15:18'
}
PicCanvas >> initialize [

	self reset.
	ignoreClip := false.
]

{
	#category : #helpers,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle [

	aBorderStyle isTransparent ifFalse: [^ false].
	aFillStyle isTransparent ifFalse: [^ false].
	^ true
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:47'
}
PicCanvas >> line: from to: to width: width color: color [

	self addCommand: (PicLine new
							from: from;
							to: to;
							width: width;
							color: color;
							yourself)
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> origin [
	"Answers the global coordinate of the currently active local origin."
	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:54'
}
PicCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	"self addCommand: (PicDrawParagraph new
							paragraph: aParagraph;
							bounds: aRectangle;
							color: aColor;
							yourself)"
	
	| scanner |
	scanner := PicCanvasDisplayScanner new
		text: aParagraph text
		textStyle: aParagraph textStyle
		foreground: aColor
		background: Color transparent
		fillBlt: self
		ignoreColorChanges: false.
	
	aParagraph displayOn: self using: scanner at: aRectangle topLeft.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> preserveStateDuring: aBlock [

	self unsupported: #preserveStateDuring.
	aBlock value: self
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/10/2021 15:18'
}
PicCanvas >> reset [

	groupStack := OrderedCollection with: PicGroup new.
	transform := Matrix2x3 identity.
	clipRect := Rectangle infinite.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	self flag: #todo.
	self unsupported: #'stencil:at:sourceRect:color:'
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> transform [
	"Answers the Matrix2x3 by which all drawing commands are currently transformed.
	Multiplication of all transforms active in the current scope."
	^ transform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> transform: anObject [

	transform := anObject
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 8/10/2021 15:59'
}
PicCanvas >> transform: aTransform clipRect: aRectangle during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform previousClipRect |
	previousTransform := transform.
	previousClipRect := clipRect.
	transform := aTransform.
	ignoreClip ifFalse: [clipRect := aRectangle].
	^ [aBlock cull: self] ensure: [
		transform := previousTransform.
		clipRect := previousClipRect]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:03'
}
PicCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip matrix2x3 |
	aTransform isIdentity ifTrue: [^ aBlock cull: self].
	
	matrix2x3 := aTransform asMatrix2x3.
	transformedClip := (matrix2x3 globalBoundsToLocal: clipRect) expanded.
	^ self group: (PicTransform matrix: matrix2x3) during: [
		self
			transform: (transform composedWithLocal: matrix2x3)
			clipRect: transformedClip
			during: aBlock].
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix2x3 withOffset: aPoint)
		during: aBlock
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> unsupported: selector [
	"Called whenever a currently not supported message of the Canvas interface is sent."
	self addCommand: (PicUnsupported type: selector)
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo.
	self unsupported: #'warpImage:transform:at:sourceRect:cellSize:'
]
