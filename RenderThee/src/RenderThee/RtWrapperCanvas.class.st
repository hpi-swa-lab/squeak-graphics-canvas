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
	#classVars : [
		'SelectorToTypeTable'
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
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:59'
}
RtWrapperCanvas class >> initialize [

	SelectorToTypeTable := Dictionary new.
	self methodsDo: [:method |
		(method pragmaAt: #type:) ifNotNil: [:typePragma |
			SelectorToTypeTable
				at: method selector
				put: typePragma arguments first]].
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:30'
}
RtWrapperCanvas class >> on: aCanvas [

	^ self new
		wrappedCanvas: aCanvas;
		yourself
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:52'
}
RtWrapperCanvas >> cache: aRectangle using: aCache during: aBlock [

	<type: #other>
	wrappedCanvas cache: aRectangle using: aCache during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> clipBy: aRectangle during: aBlock [

	<type: #clip>
	wrappedCanvas clipBy: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:44'
}
RtWrapperCanvas >> clipRect [

	<type: #accessing>
	^ wrappedCanvas clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> contentsOfArea: aRectangle [

	<type: #other>
	^ wrappedCanvas contentsOfArea: aRectangle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> contentsOfArea: aRectangle into: aForm [

	<type: #other>
	^ wrappedCanvas contentsOfArea: aRectangle into: aForm
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> depth [

	<type: #accessing>
	^ wrappedCanvas depth
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:55'
}
RtWrapperCanvas >> doesRoundedCorners [

	<type: #testing>
	^ wrappedCanvas doesRoundedCorners
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> drawImage: aForm at: aPoint [

	<type: #image>
	wrappedCanvas drawImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	<type: #image>
	wrappedCanvas drawImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	<type: #polygon>
	wrappedCanvas drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	<type: #polygon>
	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	<type: #polygon>
	wrappedCanvas drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> drawString: s at: pt [

	<type: #string>
	wrappedCanvas drawString: s at: pt
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> drawString: s at: pt font: aFont color: aColor [

	<type: #string>
	wrappedCanvas drawString: s at: pt font: aFont color: aColor
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	<type: #string>
	wrappedCanvas drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	<type: #string>
	wrappedCanvas drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> drawString: s in: boundsRect [

	<type: #string>
	wrappedCanvas drawString: s in: boundsRect
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	<type: #string>
	wrappedCanvas drawString: s in: boundsRect font: fontOrNil color: c
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> extent [

	<type: #accessing>
	^ wrappedCanvas extent
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:46'
}
RtWrapperCanvas >> fillColor: aColor [

	<type: #rectangle>
	wrappedCanvas fillColor: aColor
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> fillOval: r color: c [

	<type: #oval>
	wrappedCanvas fillOval: r color: c
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	<type: #oval>
	wrappedCanvas fillOval: r color: c borderWidth: borderWidth borderColor: borderColor 
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	<type: #oval>
	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	<type: #oval>
	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	<type: #oval>
	wrappedCanvas fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> fillRectangle: r color: c [

	<type: #rectangle>
	wrappedCanvas fillRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	<type: #rectangle>
	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	<type: #rectangle>
	wrappedCanvas fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle 
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	<type: #roundedRectangle>
	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	<type: #roundedRectangle>
	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:54'
}
RtWrapperCanvas >> finish [

	<type: #other>
	wrappedCanvas finish
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:54'
}
RtWrapperCanvas >> finish: allDamage [

	<type: #other>
	wrappedCanvas finish: allDamage
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:54'
}
RtWrapperCanvas >> flush [

	<type: #other>
	wrappedCanvas flush
]

{
	#category : #other,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:54'
}
RtWrapperCanvas >> flushDisplay [

	<type: #other>
	wrappedCanvas flushDisplay
]

{
	#category : #other,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:54'
}
RtWrapperCanvas >> forceToScreen: rect [

	<type: #other>
	wrappedCanvas forceToScreen: rect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> form [

	<type: #accessing>
	^ wrappedCanvas form
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	<type: #rectangle>
	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	<type: #rectangle>
	wrappedCanvas frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	<type: #rectangle>
	wrappedCanvas frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	<type: #roundedRectangle>
	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle 
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	<type: #roundedRectangle>
	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc 
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> frameOval: r color: c [

	<type: #oval>
	wrappedCanvas frameOval: r color: c
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:50'
}
RtWrapperCanvas >> frameOval: r width: w color: c [

	<type: #oval>
	wrappedCanvas frameOval: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	<type: #rectangle>
	wrappedCanvas frameRectangle: aRectangle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameRectangle: r color: c [

	<type: #rectangle>
	wrappedCanvas frameRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:51'
}
RtWrapperCanvas >> frameRectangle: r width: w color: c [

	<type: #rectangle>
	wrappedCanvas frameRectangle: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:52'
}
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	<type: #roundedRectangle>
	wrappedCanvas frameRoundRect: aRectangle radius: radius borderStyle: borderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:52'
}
RtWrapperCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	<type: #roundedRectangle>
	wrappedCanvas frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> image: aForm at: aPoint [

	<type: #image>
	self deprecated: 'This protocol is deprecated. Use #paintImage: instead.'.
	wrappedCanvas image: aForm at: aPoint
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> image: aForm at: aPoint rule: combinationRule [

	<type: #image>
	self deprecated: 'This protocol is deprecated. Use one of the explicit image drawing messages (#paintImage, #drawImage) instead.'.
	wrappedCanvas image: aForm at: aPoint rule: combinationRule
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	<type: #image>
	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	<type: #image>
	wrappedCanvas image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	<type: #image>
	self deprecated: 'This protocol is deprecated. Use #drawImage: instead.'.
	wrappedCanvas imageWithOpaqueWhite: aForm at: aPoint
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:55'
}
RtWrapperCanvas >> isBalloonCanvas [

	<type: #testing>
	^ wrappedCanvas isBalloonCanvas
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:55'
}
RtWrapperCanvas >> isPostscriptCanvas [

	<type: #testing>
	^ wrappedCanvas isPostscriptCanvas
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:55'
}
RtWrapperCanvas >> isShadowDrawing [

	<type: #testing>
	^ wrappedCanvas isShadowDrawing
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:55'
}
RtWrapperCanvas >> isVisible: aRectangle [

	<type: #testing>
	^ wrappedCanvas isVisible: aRectangle
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> line: pt1 to: pt2 brushForm: brush [

	<type: #line>
	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas line: pt1 to: pt2 brushForm: brush
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:46'
}
RtWrapperCanvas >> line: pt1 to: pt2 color: c [

	<type: #line>
	wrappedCanvas line: pt1 to: pt2 color: c
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:46'
}
RtWrapperCanvas >> line: pt1 to: pt2 width: w color: c [ 

	<type: #line>
	wrappedCanvas line: pt1 to: pt2 width: w color: c 
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:46'
}
RtWrapperCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	<type: #line>
	wrappedCanvas line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset 
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:46'
}
RtWrapperCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	<type: #line>
	wrappedCanvas line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> origin [

	<type: #accessing>
	^ wrappedCanvas origin
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:48'
}
RtWrapperCanvas >> paintImage: aForm at: aPoint [

	<type: #image>
	wrappedCanvas paintImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:48'
}
RtWrapperCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	<type: #image>
	wrappedCanvas paintImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:46'
}
RtWrapperCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	<type: #paragraph>
	wrappedCanvas paragraph: aParagraph bounds: aRectangle color: aColor
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> point: p color: c [

	<type: #oval>
	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas point: p color: c
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:52'
}
RtWrapperCanvas >> preserveStateDuring: aBlock [

	<type: #other>
	wrappedCanvas preserveStateDuring: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:47'
}
RtWrapperCanvas >> render: anObject [

	<type: #other>
	wrappedCanvas render: anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:54'
}
RtWrapperCanvas >> reset [

	<type: #other>
	wrappedCanvas reset
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:55'
}
RtWrapperCanvas >> seesNothingOutside: aRectangle [

	<type: #testing>
	^ wrappedCanvas seesNothingOutside: aRectangle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> shadowColor [

	<type: #accessing>
	^ wrappedCanvas shadowColor
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/23/2022 16:45'
}
RtWrapperCanvas >> shadowColor: aColor [

	<type: #accessing>
	^ wrappedCanvas shadowColor: aColor
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:48'
}
RtWrapperCanvas >> stencil: stencilForm at: aPoint color: aColor [

	<type: #stencil>
	wrappedCanvas stencil: stencilForm at: aPoint color: aColor
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:48'
}
RtWrapperCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	<type: #stencil>
	wrappedCanvas stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [

	<type: #transformation>
	wrappedCanvas transformBy: aDisplayTransform clippingTo: aClipRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [

	<type: #transformation>
	wrappedCanvas
		transformBy: aDisplayTransform
		clippingTo: aClipRect
		during: [:c | self wrappedCanvas: c during: [aBlock value: self]]
		smoothing: cellSize
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> transformBy: aDisplayTransform during: aBlock [

	<type: #transformation>
	wrappedCanvas transformBy: aDisplayTransform during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> translateBy: delta clippingTo: aRect during: aBlock [

	<type: #translation>
	wrappedCanvas translateBy: delta clippingTo: aRect during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> translateBy: delta during: aBlock [

	<type: #translation>
	wrappedCanvas translateBy: delta during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:53'
}
RtWrapperCanvas >> translateTo: newOrigin clippingTo: aRectangle during: aBlock [

	<type: #translation>
	wrappedCanvas translateTo: newOrigin clippingTo: aRectangle during: [:c |
		self wrappedCanvas: c during: [aBlock value: self]]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:48'
}
RtWrapperCanvas >> translucentImage: aForm at: aPoint [

	<type: #image>
	wrappedCanvas translucentImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:48'
}
RtWrapperCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [ 

	<type: #image>
	wrappedCanvas translucentImage: aForm at: aPoint sourceRect: sourceRect 
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform [

	<type: #image>
	wrappedCanvas warpImage: aForm transform: aTransform
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset [

	<type: #image>
	wrappedCanvas warpImage: aForm transform: aTransform at: extraOffset
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 16:49'
}
RtWrapperCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	<type: #image>
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
	#category : #private,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWrapperCanvas >> wrappedCanvas: anObject [

	wrappedCanvas := anObject
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/26/2022 13:05'
}
RtWrapperCanvas >> wrappedCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	^ aBlock ensure: [
		wrappedCanvas := previousCanvas].
]
