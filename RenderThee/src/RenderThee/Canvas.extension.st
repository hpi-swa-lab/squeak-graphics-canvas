Extension { #name : #Canvas }

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:26'
}
Canvas >> asBalloonCanvas [

	self shouldBeImplemented.
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> cacheLayer: aLayer [

	aLayer validCache: (aLayer createCacheOfType: self imageStoreClass)
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> drawDrawLayer: aLayer [

	aLayer drawOn: self
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:47'
}
Canvas >> drawGeneralBezier3Shape: contours fillStyle: aFillStyle borderStyle: aBorderStyle [

	self flag: #todo. "frameAndFill vs. fill vs. draw"
	self asBalloonCanvas
		drawGeneralBezier3Shape: contours
		color: aFillStyle asColor
		borderWidth: aBorderStyle width
		borderColor: aBorderStyle color
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> drawGroupLayer: aLayer [

	aLayer drawOn: self
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> drawLayer: aLayer [

	aLayer drawLayerOn: self
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:47'
}
Canvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	self flag: #todo. "frameAndFill vs. fill vs. draw"
	self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderWidth: aBorderStyle width
		borderColor: aBorderStyle color
]

{
	#category : #'*RenderThee-drawing',
	#'squeak_changestamp' : 'stlu 6/16/2021 14:47'
}
Canvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	self flag: #todo. "frameAndFill vs. fill vs. draw"
	^ self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderWidth: aBorderStyle width
		borderColor: aBorderStyle color
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> imageStoreClass [

	self subclassResponsibility
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
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 6/17/2021 10:27'
}
Canvas >> paintImageStore: anImageStore [

	self deprecated.
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Canvas >> paintImageStore: anImageStore sourceRect: aRectangle [

	self subclassResponsibility
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
