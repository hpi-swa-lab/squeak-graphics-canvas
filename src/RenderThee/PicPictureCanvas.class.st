"
I am a canvas that builds incoming draw commands into an object representation.
I ignore draw calls that do not have any effect (e.g. transparent fill color and no border).
My root is a `PicGroup`.
"
Class {
	#name : #PicPictureCanvas,
	#superclass : #Canvas,
	#instVars : [
		'transform',
		'clipRect',
		'groupStack'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #accessing }
PicPictureCanvas >> addCommand: aCommand [
	"Adds aCommand to the currently active group (at the front-most z-coordinate)."
	self currentGroup addChild: aCommand
]

{ #category : #accessing }
PicPictureCanvas >> clear [
	"Forget all contents of the current picture except for the current group stack."
	groupStack do: [:group | group removeAllChildren]
]

{ #category : #'drawing-support' }
PicPictureCanvas >> clipBy: aRectangle during: aBlock [

	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	
	self clipRect: (aRectangle intersect: clipRect) during: [
		self group: (PicClip rect: aRectangle) during: aBlock]
]

{ #category : #accessing }
PicPictureCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{ #category : #accessing }
PicPictureCanvas >> clipRect: anObject [

	clipRect := anObject
]

{ #category : #'scoped state' }
PicPictureCanvas >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{ #category : #accessing }
PicPictureCanvas >> currentGroup [
	"Answers the PicGroup to which all draw commands are currently added."
	^ groupStack last
]

{ #category : #'drawing-polygons' }
PicPictureCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	self
		drawPolygon: vertices
		fillStyle: (SolidFillStyle color: aColor)
		borderWidth: bw borderColor: bc
]

{ #category : #'drawing-polygons' }
PicPictureCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	vertices ifEmpty: [^ self].

	self addCommand: (PicDrawPolygon new
							vertices: vertices;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{ #category : #'drawing-polygons' }
PicPictureCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	vertices ifEmpty: [^ self].
	self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{ #category : #'drawing-text' }
PicPictureCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	self addCommand: (PicDrawString new
							contents: s;
							from: firstIndex;
							to: lastIndex;
							bounds: boundsRect;
							font: fontOrNil;
							color: c;
							yourself)
]

{ #category : #'drawing-ovals' }
PicPictureCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	self
		fillOval: r
		fillStyle: (SolidFillStyle color: c)
		borderWidth: borderWidth
		borderColor: borderColor
]

{ #category : #'drawing-ovals' }
PicPictureCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle extent isZero ifTrue: [^ self].

	self addCommand: (PicDrawOval new
							bounds: aRectangle;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{ #category : #'drawing-ovals' }
PicPictureCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{ #category : #'drawing-rectangles' }
PicPictureCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{ #category : #'drawing-rectangles' }
PicPictureCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)
]

{ #category : #'drawing-rectangles' }
PicPictureCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle area isZero ifTrue: [^ self].

	self addCommand: (PicDrawRectangle new
							bounds: aRectangle;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{ #category : #'drawing-rounded rectangles' }
PicPictureCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle extent isZero ifTrue: [^ self].

	self addCommand: (PicDrawRoundedRectangle new
							bounds: aRectangle;
							radius: cornerRadius;
							fillStyle: aFillStyle;
							borderStyle: aBorderStyle;
							yourself)
]

{ #category : #'drawing-rounded rectangles' }
PicPictureCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

	self
		frameAndFillRoundRect: aRectangle
		radius: cornerRadius
		fillStyle: fillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{ #category : #'drawing-rectangles' }
PicPictureCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{ #category : #accessing }
PicPictureCanvas >> getPicture [
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

{ #category : #'scoped state' }
PicPictureCanvas >> group: aGroup during: aBlock [
	"Scoped setter for `group` variable."
	| group |
	groupStack addLast: aGroup.
	aBlock cull: self.
	group := groupStack removeLast.
	group isEmpty ifFalse: [
		self addCommand: group]
]

{ #category : #'drawing-images' }
PicPictureCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self addCommand: (PicDrawImage new
							form: aForm;
							origin: aPoint;
							sourceRect: sourceRect;
							combinationRule: rule;
							yourself)
]

{ #category : #initialization }
PicPictureCanvas >> initialize [

	super initialize.
	groupStack := OrderedCollection with: PicGroup new.
	transform := Matrix2x3 identity.
	clipRect := Rectangle infinite
]

{ #category : #helpers }
PicPictureCanvas >> isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle [

	aBorderStyle isTransparent ifFalse: [^ false].
	aFillStyle isTransparent ifFalse: [^ false].
	^ true
]

{ #category : #'drawing-lines' }
PicPictureCanvas >> line: from to: to width: width color: color [

	self addCommand: (PicDrawLine new
							from: from;
							to: to;
							width: width;
							color: color;
							yourself)
]

{ #category : #accessing }
PicPictureCanvas >> origin [
	"Answers the global coordinate of the currently active local origin."
	^ (transform localPointToGlobal: 0@0) truncated
]

{ #category : #'drawing-text' }
PicPictureCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	self addCommand: (PicDrawParagraph new
							paragraph: aParagraph;
							bounds: aRectangle;
							color: aColor;
							yourself)
]

{ #category : #'drawing-support' }
PicPictureCanvas >> preserveStateDuring: aBlock [

	self unsupported: #preserveStateDuring.
	aBlock value: self
]

{ #category : #'drawing-images' }
PicPictureCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	self flag: #todo.
	self unsupported: #'stencil:at:sourceRect:color:'
]

{ #category : #accessing }
PicPictureCanvas >> transform [
	"Answers the Matrix2x3 by which all drawing commands are currently transformed.
	Multiplication of all transforms active in the current scope."
	^ transform
]

{ #category : #accessing }
PicPictureCanvas >> transform: anObject [

	transform := anObject
]

{ #category : #'scoped state' }
PicPictureCanvas >> transform: aTransform during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform |
	previousTransform := transform.
	transform := aTransform.
	aBlock cull: self.
	transform := previousTransform
]

{ #category : #'drawing-support' }
PicPictureCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip matrix2x3 |
	aTransform isIdentity ifTrue: [^ aBlock value: self].
	
	matrix2x3 := aTransform asMatrix2x3.
	transformedClip := (matrix2x3 globalBoundsToLocal: clipRect) expanded.
	self clipRect: transformedClip during: [
		self transform: (transform composedWithLocal: matrix2x3) during: [
			self group: (PicTransform matrix: matrix2x3) during: aBlock]]
]

{ #category : #'drawing-support' }
PicPictureCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix2x3 withOffset: aPoint)
		during: aBlock
]

{ #category : #private }
PicPictureCanvas >> unsupported: selector [
	"Called whenever a currently not supported message of the Canvas interface is sent."
	self addCommand: (PicUnsupported type: selector)
]

{ #category : #'drawing-images' }
PicPictureCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo.
	self unsupported: #'warpImage:transform:at:sourceRect:cellSize:'
]