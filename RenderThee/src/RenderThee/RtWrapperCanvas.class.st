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
	#category : #'RenderThee-Core',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
RtWrapperCanvas class >> canvas: aCanvas [

	^ self new
		wrappedCanvas: aCanvas;
		yourself
]

{
	#category : #converting,
	#timestamp : ''
}
RtWrapperCanvas >> asShadowDrawingCanvas: aColor [ 

	wrappedCanvas asShadowDrawingCanvas: aColor 
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> cache: aRectangle using: aCache during: aBlock [

	wrappedCanvas cache: aRectangle using: aCache during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> clipBy: aRectangle during: aBlock [

	wrappedCanvas clipBy: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> clipRect [

	^ wrappedCanvas clipRect
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> contentsOfArea: aRectangle [

	^ wrappedCanvas contentsOfArea: aRectangle
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> contentsOfArea: aRectangle into: aForm [

	^ wrappedCanvas contentsOfArea: aRectangle into: aForm
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> depth [

	^ wrappedCanvas depth
]

{
	#category : #testing,
	#timestamp : ''
}
RtWrapperCanvas >> doesRoundedCorners [

	^ wrappedCanvas doesRoundedCorners
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> drawImage: aForm at: aPoint [

	wrappedCanvas drawImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas drawImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #'drawing-polygons',
	#timestamp : ''
}
RtWrapperCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-polygons',
	#timestamp : ''
}
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-polygons',
	#timestamp : ''
}
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
RtWrapperCanvas >> drawString: s at: pt [

	wrappedCanvas drawString: s at: pt
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
RtWrapperCanvas >> drawString: s at: pt font: aFont color: aColor [

	wrappedCanvas drawString: s at: pt font: aFont color: aColor
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	wrappedCanvas drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	wrappedCanvas drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
RtWrapperCanvas >> drawString: s in: boundsRect [

	wrappedCanvas drawString: s in: boundsRect
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
RtWrapperCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	wrappedCanvas drawString: s in: boundsRect font: fontOrNil color: c
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> extent [

	^ wrappedCanvas extent
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> fillColor: aColor [

	wrappedCanvas fillColor: aColor
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> fillOval: r color: c [

	wrappedCanvas fillOval: r color: c
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	wrappedCanvas fillOval: r color: c borderWidth: borderWidth borderColor: borderColor 
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> fillRectangle: r color: c [

	wrappedCanvas fillRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle 
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle
]

{
	#category : #initialization,
	#timestamp : ''
}
RtWrapperCanvas >> finish [

	wrappedCanvas finish
]

{
	#category : #initialization,
	#timestamp : ''
}
RtWrapperCanvas >> finish: allDamage [

	wrappedCanvas finish: allDamage
]

{
	#category : #initialization,
	#timestamp : ''
}
RtWrapperCanvas >> flush [

	wrappedCanvas flush
]

{
	#category : #other,
	#timestamp : ''
}
RtWrapperCanvas >> flushDisplay [

	wrappedCanvas flushDisplay
]

{
	#category : #other,
	#timestamp : ''
}
RtWrapperCanvas >> forceToScreen: rect [

	wrappedCanvas forceToScreen: rect
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> form [

	^ wrappedCanvas form
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle 
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc 
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> frameOval: r color: c [

	wrappedCanvas frameOval: r color: c
]

{
	#category : #'drawing-ovals',
	#timestamp : ''
}
RtWrapperCanvas >> frameOval: r width: w color: c [

	wrappedCanvas frameOval: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	wrappedCanvas frameRectangle: aRectangle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameRectangle: r color: c [

	wrappedCanvas frameRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameRectangle: r width: w color: c [

	wrappedCanvas frameRectangle: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	wrappedCanvas frameRoundRect: aRectangle radius: radius borderStyle: borderStyle
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	wrappedCanvas frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor
]

{
	#category : #'drawing-obsolete',
	#timestamp : ''
}
RtWrapperCanvas >> image: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #paintImage: instead.'.
	wrappedCanvas image: aForm at: aPoint
]

{
	#category : #'drawing-obsolete',
	#timestamp : ''
}
RtWrapperCanvas >> image: aForm at: aPoint rule: combinationRule [

	self deprecated: 'This protocol is deprecated. Use one of the explicit image drawing messages (#paintImage, #drawImage) instead.'.
	wrappedCanvas image: aForm at: aPoint rule: combinationRule
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha
]

{
	#category : #'drawing-obsolete',
	#timestamp : ''
}
RtWrapperCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #drawImage: instead.'.
	wrappedCanvas imageWithOpaqueWhite: aForm at: aPoint
]

{
	#category : #testing,
	#timestamp : ''
}
RtWrapperCanvas >> isBalloonCanvas [

	^ wrappedCanvas isBalloonCanvas
]

{
	#category : #testing,
	#timestamp : ''
}
RtWrapperCanvas >> isPostscriptCanvas [

	^ wrappedCanvas isPostscriptCanvas
]

{
	#category : #testing,
	#timestamp : ''
}
RtWrapperCanvas >> isShadowDrawing [

	^ wrappedCanvas isShadowDrawing
]

{
	#category : #testing,
	#timestamp : ''
}
RtWrapperCanvas >> isVisible: aRectangle [

	^ wrappedCanvas isVisible: aRectangle
]

{
	#category : #'drawing-obsolete',
	#timestamp : ''
}
RtWrapperCanvas >> line: pt1 to: pt2 brushForm: brush [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas line: pt1 to: pt2 brushForm: brush
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> line: pt1 to: pt2 color: c [

	wrappedCanvas line: pt1 to: pt2 color: c
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> line: pt1 to: pt2 width: w color: c [ 

	wrappedCanvas line: pt1 to: pt2 width: w color: c 
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	wrappedCanvas line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset 
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	wrappedCanvas line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> origin [

	^ wrappedCanvas origin
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> paintImage: aForm at: aPoint [

	wrappedCanvas paintImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas paintImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	wrappedCanvas paragraph: aParagraph bounds: aRectangle color: aColor
]

{
	#category : #'drawing-obsolete',
	#timestamp : ''
}
RtWrapperCanvas >> point: p color: c [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas point: p color: c
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> preserveStateDuring: aBlock [

	wrappedCanvas preserveStateDuring: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #drawing,
	#timestamp : ''
}
RtWrapperCanvas >> render: anObject [

	wrappedCanvas render: anObject
]

{
	#category : #initialization,
	#timestamp : ''
}
RtWrapperCanvas >> reset [

	wrappedCanvas reset
]

{
	#category : #testing,
	#timestamp : ''
}
RtWrapperCanvas >> seesNothingOutside: aRectangle [

	^ wrappedCanvas seesNothingOutside: aRectangle
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> shadowColor [

	^ wrappedCanvas shadowColor
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> shadowColor: aColor [

	^ wrappedCanvas shadowColor: aColor
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> stencil: stencilForm at: aPoint color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint color: aColor
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [

	wrappedCanvas transformBy: aDisplayTransform clippingTo: aClipRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#timestamp : ''
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
	#timestamp : ''
}
RtWrapperCanvas >> transformBy: aDisplayTransform during: aBlock [

	wrappedCanvas transformBy: aDisplayTransform during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> translateBy: delta clippingTo: aRect during: aBlock [

	wrappedCanvas translateBy: delta clippingTo: aRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> translateBy: delta during: aBlock [

	wrappedCanvas translateBy: delta during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
RtWrapperCanvas >> translateTo: newOrigin clippingTo: aRectangle during: aBlock [

	wrappedCanvas translateTo: newOrigin clippingTo: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> translucentImage: aForm at: aPoint [

	wrappedCanvas translucentImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [ 

	wrappedCanvas translucentImage: aForm at: aPoint sourceRect: sourceRect 
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform [

	wrappedCanvas warpImage: aForm transform: aTransform
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset [

	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> wrappedCanvas [

	^ wrappedCanvas
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWrapperCanvas >> wrappedCanvas: anObject [

	wrappedCanvas := anObject
]

{
	#category : #private,
	#timestamp : ''
}
RtWrapperCanvas >> wrappedCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	aBlock value.
	wrappedCanvas := previousCanvas
]
