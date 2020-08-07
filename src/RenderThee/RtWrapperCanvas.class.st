Class {
	#name : #RtWrapperCanvas,
	#superclass : #Canvas,
	#instVars : [
		'wrappedCanvas'
	],
	#category : #'RenderThee-Core'
}

{ #category : #'instance creation' }
RtWrapperCanvas class >> canvas: aCanvas [

	^ self new
		wrappedCanvas: aCanvas;
		yourself
]

{ #category : #converting }
RtWrapperCanvas >> asShadowDrawingCanvas: aColor [ 

	wrappedCanvas asShadowDrawingCanvas: aColor 
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> cache: aRectangle using: aCache during: aBlock [

	wrappedCanvas cache: aRectangle using: aCache during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> clipBy: aRectangle during: aBlock [

	wrappedCanvas clipBy: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #accessing }
RtWrapperCanvas >> clipRect [

	^ wrappedCanvas clipRect
]

{ #category : #accessing }
RtWrapperCanvas >> contentsOfArea: aRectangle [

	^ wrappedCanvas contentsOfArea: aRectangle
]

{ #category : #accessing }
RtWrapperCanvas >> contentsOfArea: aRectangle into: aForm [

	^ wrappedCanvas contentsOfArea: aRectangle into: aForm
]

{ #category : #accessing }
RtWrapperCanvas >> depth [

	^ wrappedCanvas depth
]

{ #category : #testing }
RtWrapperCanvas >> doesRoundedCorners [

	^ wrappedCanvas doesRoundedCorners
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> drawImage: aForm at: aPoint [

	wrappedCanvas drawImage: aForm at: aPoint
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas drawImage: aForm at: aPoint sourceRect: sourceRect
]

{ #category : #'drawing-polygons' }
RtWrapperCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc
]

{ #category : #'drawing-polygons' }
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle
]

{ #category : #'drawing-polygons' }
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{ #category : #'drawing-text' }
RtWrapperCanvas >> drawString: s at: pt [

	wrappedCanvas drawString: s at: pt
]

{ #category : #'drawing-text' }
RtWrapperCanvas >> drawString: s at: pt font: aFont color: aColor [

	wrappedCanvas drawString: s at: pt font: aFont color: aColor
]

{ #category : #'drawing-text' }
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	wrappedCanvas drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor
]

{ #category : #'drawing-text' }
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	wrappedCanvas drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 
]

{ #category : #'drawing-text' }
RtWrapperCanvas >> drawString: s in: boundsRect [

	wrappedCanvas drawString: s in: boundsRect
]

{ #category : #'drawing-text' }
RtWrapperCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	wrappedCanvas drawString: s in: boundsRect font: fontOrNil color: c
]

{ #category : #accessing }
RtWrapperCanvas >> extent [

	^ wrappedCanvas extent
]

{ #category : #drawing }
RtWrapperCanvas >> fillColor: aColor [

	wrappedCanvas fillColor: aColor
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> fillOval: r color: c [

	wrappedCanvas fillOval: r color: c
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	wrappedCanvas fillOval: r color: c borderWidth: borderWidth borderColor: borderColor 
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> fillRectangle: r color: c [

	wrappedCanvas fillRectangle: r color: c
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle 
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle
]

{ #category : #initialization }
RtWrapperCanvas >> finish [

	wrappedCanvas finish
]

{ #category : #initialization }
RtWrapperCanvas >> finish: allDamage [

	wrappedCanvas finish: allDamage
]

{ #category : #initialization }
RtWrapperCanvas >> flush [

	wrappedCanvas flush
]

{ #category : #other }
RtWrapperCanvas >> flushDisplay [

	wrappedCanvas flushDisplay
]

{ #category : #other }
RtWrapperCanvas >> forceToScreen: rect [

	wrappedCanvas forceToScreen: rect
]

{ #category : #accessing }
RtWrapperCanvas >> form [

	^ wrappedCanvas form
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle 
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc 
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> frameOval: r color: c [

	wrappedCanvas frameOval: r color: c
]

{ #category : #'drawing-ovals' }
RtWrapperCanvas >> frameOval: r width: w color: c [

	wrappedCanvas frameOval: r width: w color: c
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	wrappedCanvas frameRectangle: aRectangle borderStyle: aBorderStyle
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameRectangle: r color: c [

	wrappedCanvas frameRectangle: r color: c
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameRectangle: r width: w color: c [

	wrappedCanvas frameRectangle: r width: w color: c
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	wrappedCanvas frameRoundRect: aRectangle radius: radius borderStyle: borderStyle
]

{ #category : #'drawing-rectangles' }
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	wrappedCanvas frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor
]

{ #category : #'drawing-obsolete' }
RtWrapperCanvas >> image: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #paintImage: instead.'.
	wrappedCanvas image: aForm at: aPoint
]

{ #category : #'drawing-obsolete' }
RtWrapperCanvas >> image: aForm at: aPoint rule: combinationRule [

	self deprecated: 'This protocol is deprecated. Use one of the explicit image drawing messages (#paintImage, #drawImage) instead.'.
	wrappedCanvas image: aForm at: aPoint rule: combinationRule
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha
]

{ #category : #'drawing-obsolete' }
RtWrapperCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #drawImage: instead.'.
	wrappedCanvas imageWithOpaqueWhite: aForm at: aPoint
]

{ #category : #testing }
RtWrapperCanvas >> isBalloonCanvas [

	^ wrappedCanvas isBalloonCanvas
]

{ #category : #testing }
RtWrapperCanvas >> isPostscriptCanvas [

	^ wrappedCanvas isPostscriptCanvas
]

{ #category : #testing }
RtWrapperCanvas >> isShadowDrawing [

	^ wrappedCanvas isShadowDrawing
]

{ #category : #testing }
RtWrapperCanvas >> isVisible: aRectangle [

	^ wrappedCanvas isVisible: aRectangle
]

{ #category : #'drawing-obsolete' }
RtWrapperCanvas >> line: pt1 to: pt2 brushForm: brush [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas line: pt1 to: pt2 brushForm: brush
]

{ #category : #drawing }
RtWrapperCanvas >> line: pt1 to: pt2 color: c [

	wrappedCanvas line: pt1 to: pt2 color: c
]

{ #category : #drawing }
RtWrapperCanvas >> line: pt1 to: pt2 width: w color: c [ 

	wrappedCanvas line: pt1 to: pt2 width: w color: c 
]

{ #category : #drawing }
RtWrapperCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	wrappedCanvas line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset 
]

{ #category : #drawing }
RtWrapperCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	wrappedCanvas line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 
]

{ #category : #accessing }
RtWrapperCanvas >> origin [

	^ wrappedCanvas origin
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> paintImage: aForm at: aPoint [

	wrappedCanvas paintImage: aForm at: aPoint
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas paintImage: aForm at: aPoint sourceRect: sourceRect
]

{ #category : #drawing }
RtWrapperCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	wrappedCanvas paragraph: aParagraph bounds: aRectangle color: aColor
]

{ #category : #'drawing-obsolete' }
RtWrapperCanvas >> point: p color: c [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas point: p color: c
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> preserveStateDuring: aBlock [

	wrappedCanvas preserveStateDuring: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #drawing }
RtWrapperCanvas >> render: anObject [

	wrappedCanvas render: anObject
]

{ #category : #initialization }
RtWrapperCanvas >> reset [

	wrappedCanvas reset
]

{ #category : #testing }
RtWrapperCanvas >> seesNothingOutside: aRectangle [

	^ wrappedCanvas seesNothingOutside: aRectangle
]

{ #category : #accessing }
RtWrapperCanvas >> shadowColor [

	^ wrappedCanvas shadowColor
]

{ #category : #accessing }
RtWrapperCanvas >> shadowColor: aColor [

	^ wrappedCanvas shadowColor: aColor
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> stencil: stencilForm at: aPoint color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint color: aColor
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [

	wrappedCanvas transformBy: aDisplayTransform clippingTo: aClipRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [

	wrappedCanvas
		transformBy: aDisplayTransform
		clippingTo: aClipRect
		during: [:c | self wrappedCanvas: c during: [aBlock value: self]]
		smoothing: cellSize
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> transformBy: aDisplayTransform during: aBlock [

	wrappedCanvas transformBy: aDisplayTransform during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> translateBy: delta clippingTo: aRect during: aBlock [

	wrappedCanvas translateBy: delta clippingTo: aRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> translateBy: delta during: aBlock [

	wrappedCanvas translateBy: delta during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #'drawing-support' }
RtWrapperCanvas >> translateTo: newOrigin clippingTo: aRectangle during: aBlock [

	wrappedCanvas translateTo: newOrigin clippingTo: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> translucentImage: aForm at: aPoint [

	wrappedCanvas translucentImage: aForm at: aPoint
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [ 

	wrappedCanvas translucentImage: aForm at: aPoint sourceRect: sourceRect 
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> warpImage: aForm transform: aTransform [

	wrappedCanvas warpImage: aForm transform: aTransform
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset [

	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset
]

{ #category : #'drawing-images' }
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize
]

{ #category : #accessing }
RtWrapperCanvas >> wrappedCanvas [

	^ wrappedCanvas
]

{ #category : #accessing }
RtWrapperCanvas >> wrappedCanvas: anObject [

	wrappedCanvas := anObject
]

{ #category : #private }
RtWrapperCanvas >> wrappedCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	aBlock value.
	wrappedCanvas := previousCanvas
]
