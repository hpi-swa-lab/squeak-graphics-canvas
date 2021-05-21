"
I am a helper class to easily build wrappers for a Canvas.
My subclasses can redefine my methods to intercept messages to the wrapped canvas.
"
Class {
	#name : #RtWrapperCanvas,
	#superclass : #Canvas,
	#instVars : [
		'wrappedCanvas'
	],
	#category : #'RenderThee-Core'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas class >> canvas: aCanvas [

	^ self new
		wrappedCanvas: aCanvas;
		yourself
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> asShadowDrawingCanvas: aColor [ 

	wrappedCanvas asShadowDrawingCanvas: aColor 
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> cache: aRectangle using: aCache during: aBlock [

	wrappedCanvas cache: aRectangle using: aCache during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> clipBy: aRectangle during: aBlock [

	wrappedCanvas clipBy: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> clipRect [

	^ wrappedCanvas clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> contentsOfArea: aRectangle [

	^ wrappedCanvas contentsOfArea: aRectangle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> contentsOfArea: aRectangle into: aForm [

	^ wrappedCanvas contentsOfArea: aRectangle into: aForm
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> depth [

	^ wrappedCanvas depth
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> doesRoundedCorners [

	^ wrappedCanvas doesRoundedCorners
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawImage: aForm at: aPoint [

	wrappedCanvas drawImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas drawImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawString: s at: pt [

	wrappedCanvas drawString: s at: pt
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawString: s at: pt font: aFont color: aColor [

	wrappedCanvas drawString: s at: pt font: aFont color: aColor
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	wrappedCanvas drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	wrappedCanvas drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawString: s in: boundsRect [

	wrappedCanvas drawString: s in: boundsRect
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	wrappedCanvas drawString: s in: boundsRect font: fontOrNil color: c
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> extent [

	^ wrappedCanvas extent
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillColor: aColor [

	wrappedCanvas fillColor: aColor
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillOval: r color: c [

	wrappedCanvas fillOval: r color: c
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	wrappedCanvas fillOval: r color: c borderWidth: borderWidth borderColor: borderColor 
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillRectangle: r color: c [

	wrappedCanvas fillRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle 
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> finish [

	wrappedCanvas finish
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> finish: allDamage [

	wrappedCanvas finish: allDamage
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> flush [

	wrappedCanvas flush
]

{
	#category : #other,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> flushDisplay [

	wrappedCanvas flushDisplay
]

{
	#category : #other,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> forceToScreen: rect [

	wrappedCanvas forceToScreen: rect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> form [

	^ wrappedCanvas form
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle 
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc 
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameOval: r color: c [

	wrappedCanvas frameOval: r color: c
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameOval: r width: w color: c [

	wrappedCanvas frameOval: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	wrappedCanvas frameRectangle: aRectangle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameRectangle: r color: c [

	wrappedCanvas frameRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameRectangle: r width: w color: c [

	wrappedCanvas frameRectangle: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	wrappedCanvas frameRoundRect: aRectangle radius: radius borderStyle: borderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	wrappedCanvas frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> image: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #paintImage: instead.'.
	wrappedCanvas image: aForm at: aPoint
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> image: aForm at: aPoint rule: combinationRule [

	self deprecated: 'This protocol is deprecated. Use one of the explicit image drawing messages (#paintImage, #drawImage) instead.'.
	wrappedCanvas image: aForm at: aPoint rule: combinationRule
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #drawImage: instead.'.
	wrappedCanvas imageWithOpaqueWhite: aForm at: aPoint
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> isBalloonCanvas [

	^ wrappedCanvas isBalloonCanvas
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> isPostscriptCanvas [

	^ wrappedCanvas isPostscriptCanvas
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> isShadowDrawing [

	^ wrappedCanvas isShadowDrawing
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> isVisible: aRectangle [

	^ wrappedCanvas isVisible: aRectangle
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> line: pt1 to: pt2 brushForm: brush [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas line: pt1 to: pt2 brushForm: brush
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> line: pt1 to: pt2 color: c [

	wrappedCanvas line: pt1 to: pt2 color: c
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> line: pt1 to: pt2 width: w color: c [ 

	wrappedCanvas line: pt1 to: pt2 width: w color: c 
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	wrappedCanvas line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset 
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	wrappedCanvas line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> origin [

	^ wrappedCanvas origin
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> paintImage: aForm at: aPoint [

	wrappedCanvas paintImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas paintImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	wrappedCanvas paragraph: aParagraph bounds: aRectangle color: aColor
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> point: p color: c [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas point: p color: c
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> preserveStateDuring: aBlock [

	wrappedCanvas preserveStateDuring: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> render: anObject [

	wrappedCanvas render: anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> reset [

	wrappedCanvas reset
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> seesNothingOutside: aRectangle [

	^ wrappedCanvas seesNothingOutside: aRectangle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> shadowColor [

	^ wrappedCanvas shadowColor
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> shadowColor: aColor [

	^ wrappedCanvas shadowColor: aColor
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> stencil: stencilForm at: aPoint color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint color: aColor
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [

	wrappedCanvas transformBy: aDisplayTransform clippingTo: aClipRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [

	wrappedCanvas
		transformBy: aDisplayTransform
		clippingTo: aClipRect
		during: [:c | self wrappedCanvas: c during: [aBlock value: self]]
		smoothing: cellSize
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> transformBy: aDisplayTransform during: aBlock [

	wrappedCanvas transformBy: aDisplayTransform during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> translateBy: delta clippingTo: aRect during: aBlock [

	wrappedCanvas translateBy: delta clippingTo: aRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> translateBy: delta during: aBlock [

	wrappedCanvas translateBy: delta during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> translateTo: newOrigin clippingTo: aRectangle during: aBlock [

	wrappedCanvas translateTo: newOrigin clippingTo: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> translucentImage: aForm at: aPoint [

	wrappedCanvas translucentImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [ 

	wrappedCanvas translucentImage: aForm at: aPoint sourceRect: sourceRect 
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform [

	wrappedCanvas warpImage: aForm transform: aTransform
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset [

	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> wrappedCanvas [

	^ wrappedCanvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> wrappedCanvas: anObject [

	wrappedCanvas := anObject
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> wrappedCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	aBlock value.
	wrappedCanvas := previousCanvas
]
