"
I am a canvas that ignores all incoming draw commands.
I attempt to do so with the least amount of overhead possible.
"
Class {
	#name : #RtNullCanvas,
	#superclass : #Canvas,
	#instVars : [
		'origin',
		'clipRect'
	],
	#category : #'RenderThee-Benchmarking'
}

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/28/2022 16:30'
}
RtNullCanvas >> clipBy: aRectangle during: aBlock [

	^ aBlock value: (self
		copyOrigin: origin
		clipRect: (aRectangle intersect: clipRect))
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
	#category : #copying,
	#'squeak_changestamp' : 'stlu 3/28/2022 16:29'
}
RtNullCanvas >> copyOrigin: aPoint clipRect: aRectangle [

	^ self shallowCopy
		setOrigin: aPoint
		clipRect: aRectangle
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
	#'squeak_changestamp' : 'stlu 3/28/2022 16:28'
}
RtNullCanvas >> initialize [

	super initialize.
	origin := 0@0.
	clipRect := Rectangle infinite.
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtNullCanvas >> line: from to: to width: width color: color [

	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/28/2022 16:28'
}
RtNullCanvas >> origin [

	^ 0@0
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
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/28/2022 16:29'
}
RtNullCanvas >> setOrigin: aPoint clipRect: aRectangle [

	origin := aPoint.
	clipRect := aRectangle.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
RtNullCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/28/2022 16:35'
}
RtNullCanvas >> transformBy: aTransform during: aBlock [

	| newClip |
	aTransform isPureTranslation ifTrue: [
		^ self
			translateBy: (aTransform localPointToGlobal: 0@0) truncated
			during: aBlock].
	newClip := (aTransform globalBoundsToLocal: clipRect) truncated.
	^ aBlock value: (self
		copyOrigin: origin - newClip topLeft
		clipRect: newClip)
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/28/2022 16:27'
}
RtNullCanvas >> translateBy: aPoint during: aBlock [

	^ aBlock value: (self
		copyOrigin: origin + aPoint
		clipRect: (clipRect translateBy: aPoint))
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
RtNullCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	
]
