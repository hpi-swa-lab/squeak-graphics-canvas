Extension { #name : #Canvas }

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:26'
}
Canvas >> asBalloonCanvas [

	self shouldBeImplemented.
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 5/16/2022 17:24'
}
Canvas >> drawGeneralBezier3Shape: contours fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self asBalloonCanvas
		drawGeneralBezier3Shape: contours
		color: aFillStyle asColor
		borderWidth: aBorderStyle width
		borderColor: aBorderStyle color
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 5/16/2022 17:24'
}
Canvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderWidth: aBorderStyle width
		borderColor: aBorderStyle color
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 5/16/2022 17:23'
}
Canvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderWidth: aBorderStyle width
		borderColor: aBorderStyle color
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 5/16/2022 17:22'
}
Canvas >> frameOval: aRectangle borderStyle: aBorderStyle [

	^ self
		frameOval: aRectangle
		width: aBorderStyle width
		color: aBorderStyle color
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/2/2022 11:29'
}
Canvas >> infiniteFillRectangle: aRectangle fillStyle: aFillStyle [
	"Make requirement explicit."
	self subclassResponsibility.
]

{
	#category : #'*RenderThee-override',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [
	"Transform the receiver by the given display transformation during the execution of aBlock. The given clip rectangle defines the *global* (e.g., outer) rectangle against which the receiver should clip (which would be equivalent to 'self clipRect: aClipRect; transformBy: aDisplayTransform')."
	self clipBy: aClipRect during: [:canvas |
		canvas transformBy: aDisplayTransform during: aBlock]
]

{
	#category : #'*RenderThee-override',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [
	"Transform the receiver by the given display transformation during the execution of aBlock. The given clip rectangle defines the *global* (e.g., outer) rectangle against which the receiver should clip (which would be equivalent to 'self clipRect: aClipRect; transformBy: aDisplayTransform')."
	self transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 1/27/2022 13:03'
}
Canvas >> transformBy: aDisplayTransform during: aBlock [

	self
		transformBy: aDisplayTransform
		clippingTo: self clipRect
		during: aBlock smoothing: 1.
]

{
	#category : #'*RenderThee-override',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> translateBy: aPoint clippingTo: aRectangle during: aBlock [

	self clipBy: aRectangle during: [:c |
		c translateBy: aPoint during: aBlock]
]
