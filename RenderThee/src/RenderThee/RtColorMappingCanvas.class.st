"
I am a helper class to easily build wrappers for a Canvas.
My subclasses can redefine my methods to intercept messages to the wrapped canvas.
"
Class {
	#name : #RtColorMappingCanvas,
	#superclass : #RtWrapperCanvas,
	#category : #'RenderThee-Canvases',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:08'
}
RtColorMappingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices color: (self mapColor: aColor) borderWidth: bw borderColor: (self mapColor: bc).
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:09'
}
RtColorMappingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas drawPolygon: vertices fillStyle: (self mapFillStyle: aFillStyle) borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:09'
}
RtColorMappingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas drawPolygon: vertices fillStyle: (self mapFillStyle: aFillStyle) borderWidth: bw borderColor: (self mapColor: bc).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:15'
}
RtColorMappingCanvas >> drawString: s at: pt [

	self drawString: s from: 1 to: s size at: pt font: nil color: Color black.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:15'
}
RtColorMappingCanvas >> drawString: s at: pt font: aFont color: aColor [

	wrappedCanvas drawString: s at: pt font: aFont color: (self mapColor: aColor).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:16'
}
RtColorMappingCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	wrappedCanvas drawString: s from: firstIndex to: lastIndex at: pt font: font color: (self mapColor: aColor).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:16'
}
RtColorMappingCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	wrappedCanvas drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: (self mapColor: c).
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:16'
}
RtColorMappingCanvas >> drawString: s in: boundsRect [

	self drawString: s from: 1 to: s size in: boundsRect font: nil color: Color black.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:16'
}
RtColorMappingCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	wrappedCanvas drawString: s in: boundsRect font: fontOrNil color: (self mapColor: c).
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:02'
}
RtColorMappingCanvas >> fillColor: aColor [

	wrappedCanvas fillColor: (self mapColor: aColor)
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:05'
}
RtColorMappingCanvas >> fillOval: r color: c [

	wrappedCanvas fillOval: r color: (self mapColor: c).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:06'
}
RtColorMappingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	wrappedCanvas fillOval: r color: c borderWidth: borderWidth borderColor: (self mapColor: borderColor).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:06'
}
RtColorMappingCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: (self mapFillStyle: aFillStyle).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:07'
}
RtColorMappingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas fillOval: aRectangle fillStyle: (self mapFillStyle: aFillStyle) borderStyle: (self mapBorderStyle: aBorderStyle)
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:08'
}
RtColorMappingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	wrappedCanvas fillOval: aRectangle fillStyle: (self mapFillStyle: aFillStyle) borderWidth: bw borderColor: (self mapColor: bc).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:09'
}
RtColorMappingCanvas >> fillRectangle: r color: c [

	wrappedCanvas fillRectangle: r color: (self mapColor: c).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:10'
}
RtColorMappingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillRectangle: aRectangle fillStyle: (self mapFillStyle: aFillStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:10'
}
RtColorMappingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	wrappedCanvas fillRectangle: aRectangle fillStyle: (self mapFillStyle: aFillStyle) borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:10'
}
RtColorMappingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: (self mapFillStyle: fillStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:11'
}
RtColorMappingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	wrappedCanvas fillRoundRect: aRectangle radius: radius fillStyle: (self mapFillStyle: fillStyle) borderStyle: (self mapBorderStyle: borderStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:11'
}
RtColorMappingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: (self mapColor: fillColor) borderWidth: borderWidth borderColor: (self mapColor: borderColor)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:11'
}
RtColorMappingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	wrappedCanvas frameAndFillRectangle: r fillColor: (self mapColor: fillColor) borderWidth: borderWidth topLeftColor: (self mapColor: topLeftColor) bottomRightColor: (self mapColor: bottomRightColor).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:12'
}
RtColorMappingCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	wrappedCanvas frameAndFillRectangle: aRectangle fillStyle: (self mapFillStyle: aFillStyle) borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:12'
}
RtColorMappingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: (self mapFillStyle: fillStyle) borderStyle: (self mapBorderStyle: borderStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:12'
}
RtColorMappingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	wrappedCanvas frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: (self mapFillStyle: fillStyle) borderWidth: bw borderColor: (self mapColor: bc).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:08'
}
RtColorMappingCanvas >> frameOval: r color: c [

	wrappedCanvas frameOval: r color: (self mapColor: c).
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:08'
}
RtColorMappingCanvas >> frameOval: r width: w color: c [

	wrappedCanvas frameOval: r width: w color: (self mapColor: c)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:12'
}
RtColorMappingCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	wrappedCanvas frameRectangle: aRectangle borderStyle: (self mapBorderStyle: aBorderStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:13'
}
RtColorMappingCanvas >> frameRectangle: r color: c [

	wrappedCanvas frameRectangle: r color: (self mapColor: c).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:13'
}
RtColorMappingCanvas >> frameRectangle: r width: w color: c [

	wrappedCanvas frameRectangle: r width: w color: (self mapColor: c).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:13'
}
RtColorMappingCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	wrappedCanvas frameRoundRect: aRectangle radius: radius borderStyle: (self mapBorderStyle: borderStyle).
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:13'
}
RtColorMappingCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	wrappedCanvas frameRoundRect: aRectangle radius: radius width: borderWidth color: (self mapColor: borderColor).
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtColorMappingCanvas >> image: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #paintImage: instead.'.
	wrappedCanvas image: aForm at: aPoint
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtColorMappingCanvas >> image: aForm at: aPoint rule: combinationRule [

	self deprecated: 'This protocol is deprecated. Use one of the explicit image drawing messages (#paintImage, #drawImage) instead.'.
	wrappedCanvas image: aForm at: aPoint rule: combinationRule
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtColorMappingCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	self deprecated: 'This protocol is deprecated. Use #drawImage: instead.'.
	wrappedCanvas imageWithOpaqueWhite: aForm at: aPoint
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtColorMappingCanvas >> line: pt1 to: pt2 brushForm: brush [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas line: pt1 to: pt2 brushForm: brush
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:02'
}
RtColorMappingCanvas >> line: pt1 to: pt2 color: c [

	wrappedCanvas line: pt1 to: pt2 color: (self mapColor: c)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:02'
}
RtColorMappingCanvas >> line: pt1 to: pt2 width: w color: c [ 

	wrappedCanvas line: pt1 to: pt2 width: w color: (self mapColor: c)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:02'
}
RtColorMappingCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	wrappedCanvas line: pt1 to: pt2 width: width color: (self mapColor: color1) dashLength: s1 secondColor: (self mapColor: color2) secondDashLength: s2 startingOffset: startingOffset 
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:03'
}
RtColorMappingCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	wrappedCanvas line: pt1 to: pt2 width: w1 color: (self mapColor: c1) stepWidth: s1 secondWidth: w2 secondColor: (self mapColor: c2) secondStepWidth: s2 
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/31/2022 18:09'
}
RtColorMappingCanvas >> mapBorderStyle: aBorderStyle [

	aBorderStyle isTransparent ifTrue: [^ aBorderStyle].
	^ aBorderStyle copy
		color: (self mapColor: aBorderStyle color);
		baseColor: (self mapColor: aBorderStyle baseColor);
		yourself
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:04'
}
RtColorMappingCanvas >> mapColor: aColor [

	self subclassResponsibility.
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:17'
}
RtColorMappingCanvas >> mapFillStyle: aFillStyle [

	self subclassResponsibility.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:03'
}
RtColorMappingCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	wrappedCanvas paragraph: aParagraph bounds: aRectangle color: (self mapColor: aColor)
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtColorMappingCanvas >> point: p color: c [

	self deprecated: 'Will be removed in the future.'.
	wrappedCanvas point: p color: c
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:04'
}
RtColorMappingCanvas >> stencil: stencilForm at: aPoint color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint color: (self mapColor: aColor)
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:04'
}
RtColorMappingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	wrappedCanvas stencil: stencilForm at: aPoint sourceRect: sourceRect color: (self mapColor: aColor)
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/26/2022 13:05'
}
RtColorMappingCanvas >> wrappedCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	^ aBlock ensure: [
		wrappedCanvas := previousCanvas].
]
