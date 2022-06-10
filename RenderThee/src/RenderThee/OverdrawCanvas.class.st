Class {
	#name : #OverdrawCanvas,
	#superclass : #ColorMappingCanvas,
	#instVars : [
		'color',
		'overdrawAlpha',
		'overdrawColor',
		'overdrawFillStyle'
	],
	#category : #'RenderThee-Canvases'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/3/2022 10:12'
}
OverdrawCanvas >> allocateForm: extentPoint [

	^ myCanvas allocateForm: extentPoint
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/2/2022 09:47'
}
OverdrawCanvas >> color [

	^ overdrawColor
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/2/2022 09:59'
}
OverdrawCanvas >> color: aColor [

	color := aColor.
	self colorChanged.
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 2/2/2022 09:59'
}
OverdrawCanvas >> colorChanged [

	overdrawColor := color alpha: overdrawAlpha.
	overdrawFillStyle := SolidFillStyle color: overdrawColor.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/3/2022 10:17'
}
OverdrawCanvas >> contentsOfArea: aRectangle into: aForm [

	aForm getCanvas fillColor: color.
	^ aForm
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:02'
}
OverdrawCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	myCanvas
		drawPolygon: vertices
		fillStyle: (self mapFillStyle: aFillStyle)
		borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/2/2022 09:58'
}
OverdrawCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: fontOrNil color: aColor [

	| font width height |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	width := font widthOfString: s from: firstIndex to: lastIndex.
	height := font height.
	myCanvas
		fillRectangle: (pt extent: width @ height)
		color: overdrawColor.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/2/2022 09:58'
}
OverdrawCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	| font width height |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	width := font widthOfString: s from: firstIndex to: lastIndex.
	height := font height.
	myCanvas
		fillRectangle: (boundsRect origin extent: (width @ height min: boundsRect extent))
		color: overdrawColor.
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:03'
}
OverdrawCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	myCanvas
		fillOval: aRectangle
		fillStyle: (self mapFillStyle: aFillStyle)
		borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:03'
}
OverdrawCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	myCanvas
		fillRectangle: aRectangle
		fillStyle: (self mapFillStyle: aFillStyle)
		borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:05'
}
OverdrawCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	myCanvas
		fillRoundRect: aRectangle
		radius: radius
		fillStyle: (self mapFillStyle: fillStyle)
		borderStyle: (self mapBorderStyle: borderStyle).
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:05'
}
OverdrawCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	myCanvas
		frameAndFillRectangle: aRectangle
		fillStyle: (self mapFillStyle: aFillStyle)
		borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:06'
}
OverdrawCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	myCanvas
		frameAndFillRoundRect: aRectangle
		radius: cornerRadius
		fillStyle: (self mapFillStyle: fillStyle)
		borderStyle: (self mapBorderStyle: borderStyle).
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:06'
}
OverdrawCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	myCanvas
		frameRectangle: aRectangle
		borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'border styles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:06'
}
OverdrawCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	myCanvas
		frameRoundRect: aRectangle
		radius: radius
		borderStyle: (self mapBorderStyle: borderStyle).
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 2/2/2022 09:57'
}
OverdrawCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	myCanvas fillRectangle: (aPoint extent: sourceRect extent) color: overdrawColor.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:05'
}
OverdrawCanvas >> infiniteFillRectangle: aRectangle fillStyle: aFillStyle [

	"Note: use overdrawColor directly because the fill style is an infinite fill style."
	myCanvas fillRectangle: aRectangle color: overdrawColor.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 2/2/2022 10:00'
}
OverdrawCanvas >> initialize [

	super initialize.
	overdrawAlpha := 0.125.
	color := Color black.
	self colorChanged.
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 2/2/2022 10:02'
}
OverdrawCanvas >> mapBorderStyle: aBorderStyle [

	aBorderStyle isTransparent ifTrue: [^ aBorderStyle].
	^ aBorderStyle copy
		color: (self mapColor: aBorderStyle color);
		baseColor: (self mapColor: aBorderStyle baseColor);
		yourself
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 2/2/2022 09:47'
}
OverdrawCanvas >> mapColor: aColor [

	^ overdrawColor
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 2/2/2022 09:47'
}
OverdrawCanvas >> mapFillStyle: aFillStyle [

	aFillStyle isTransparent ifTrue: [^ aFillStyle].
	^ overdrawFillStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/2/2022 09:51'
}
OverdrawCanvas >> overdrawAlpha [

	^ overdrawAlpha
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/2/2022 10:00'
}
OverdrawCanvas >> overdrawAlpha: anObject [

	overdrawAlpha := anObject.
	self colorChanged.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/2/2022 10:33'
}
OverdrawCanvas >> paragraph: paragraph bounds: bounds color: c [

	self
		paragraph2: paragraph
		bounds: bounds
		color: (self mapColor: c).
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 2/2/2022 09:57'
}
OverdrawCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	myCanvas fillRectangle: (aPoint extent: sourceRect extent) color: overdrawColor.
]
