"
I am a canvas that ignores all incoming draw commands.
I attempt to do so with the least amount of overhead possible.
"
Class {
	#name : #RtNullCanvas,
	#superclass : #Canvas,
	#instVars : [
		'transform',
		'clipRect'
	],
	#category : #'RenderThee-Benchmarking'
}

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:52'
}
RtNullCanvas >> clipBy: aRectangle during: aBlock [

	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	
	self clipRect: (aRectangle intersect: clipRect) during: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:56'
}
RtNullCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:51'
}
RtNullCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:51'
}
RtNullCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:51'
}
RtNullCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:51'
}
RtNullCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:51'
}
RtNullCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/10/2021 12:56'
}
RtNullCanvas >> initialize [

	super initialize.
	transform := Matrix2x3 identity.
	clipRect := Rectangle infinite
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> line: from to: to width: width color: color [

	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> origin [
	"Answers the global coordinate of the currently active local origin."
	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:56'
}
RtNullCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:52'
}
RtNullCanvas >> preserveStateDuring: aBlock [

	aBlock value: self
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
RtNullCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> transform [
	"Answers the Matrix2x3 by which all drawing commands are currently transformed.
	Multiplication of all transforms active in the current scope."
	^ transform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> transform: anObject [

	transform := anObject
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> transform: aTransform during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform |
	previousTransform := transform.
	transform := aTransform.
	aBlock cull: self.
	transform := previousTransform
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:56'
}
RtNullCanvas >> transformBy: aTransform during: aBlock [

	aTransform isIdentity ifTrue: [^ aBlock value: self].
	
	self clipRect: (aTransform globalBoundsToLocal: clipRect) expanded during: [
		self transform: (transform composedWithLocal: aTransform asMatrix2x3) during: aBlock]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNullCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix2x3 withOffset: aPoint)
		during: aBlock
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
RtNullCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	
]
