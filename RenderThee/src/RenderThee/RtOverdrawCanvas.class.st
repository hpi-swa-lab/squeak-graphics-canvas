Class {
	#name : #RtOverdrawCanvas,
	#superclass : #RtColorMappingCanvas,
	#instVars : [
		'color',
		'fillStyle'
	],
	#category : #'RenderThee-Core'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 14:18'
}
RtOverdrawCanvas >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:41'
}
RtOverdrawCanvas >> color: aColor [

	color := aColor.
	fillStyle := SolidFillStyle color: aColor.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:33'
}
RtOverdrawCanvas >> drawImage: aForm at: aPoint [

	wrappedCanvas fillRectangle: (aPoint extent: aForm extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:35'
}
RtOverdrawCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas fillRectangle: (aPoint extent: sourceRect extent) color: color.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/1/2022 16:04'
}
RtOverdrawCanvas >> drawString: s at: pt font: fontOrNil color: aColor [

	| font width height |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	width := font widthOfString: s.
	height := font height.
	wrappedCanvas
		fillRectangle: (pt extent: width @ height)
		color: color.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/1/2022 16:05'
}
RtOverdrawCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: fontOrNil color: aColor [

	| font width height |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	width := font widthOfString: s from: firstIndex to: lastIndex.
	height := font height.
	wrappedCanvas
		fillRectangle: (pt extent: width @ height)
		color: color.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/1/2022 16:03'
}
RtOverdrawCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	| font width height |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	width := font widthOfString: s from: firstIndex to: lastIndex.
	height := font height.
	wrappedCanvas
		fillRectangle: (boundsRect origin extent: (width @ height min: boundsRect extent))
		color: color.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 2/1/2022 16:03'
}
RtOverdrawCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	| font width height |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	width := font widthOfString: s.
	height := font height.
	wrappedCanvas
		fillRectangle: (boundsRect origin extent: (width @ height min: boundsRect extent))
		color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:35'
}
RtOverdrawCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	wrappedCanvas fillRectangle: (aPoint extent: sourceRect extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:35'
}
RtOverdrawCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	wrappedCanvas fillRectangle: (aPoint extent: sourceRect extent) color: color.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:25'
}
RtOverdrawCanvas >> infiniteFillRectangle: aRectangle fillStyle: aFillStyle [

	wrappedCanvas fillRectangle: aRectangle color: color.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/27/2022 17:26'
}
RtOverdrawCanvas >> initialize [

	super initialize.
	self color: (Color red alpha: 0.125).
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/27/2022 11:41'
}
RtOverdrawCanvas >> mapColor: aColor [

	^ color
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/31/2022 18:08'
}
RtOverdrawCanvas >> mapFillStyle: aFillStyle [

	aFillStyle isTransparent ifTrue: [^ aFillStyle].
	^ fillStyle
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:36'
}
RtOverdrawCanvas >> paintImage: aForm at: aPoint [

	wrappedCanvas fillRectangle: (aPoint extent: aForm extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:36'
}
RtOverdrawCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas fillRectangle: (aPoint extent: sourceRect extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:36'
}
RtOverdrawCanvas >> stencil: stencilForm at: aPoint color: aColor [

	wrappedCanvas fillRectangle: (aPoint extent: stencilForm extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:36'
}
RtOverdrawCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	wrappedCanvas fillRectangle: (aPoint extent: sourceRect extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:37'
}
RtOverdrawCanvas >> translucentImage: aForm at: aPoint [

	wrappedCanvas fillRectangle: (aPoint extent: aForm extent) color: color.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 1/27/2022 17:37'
}
RtOverdrawCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [

	wrappedCanvas fillRectangle: (aPoint extent: sourceRect extent) color: color.
]
