Extension { #name : #Canvas }

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
Canvas >> cacheLayer: aLayer [

	aLayer validCache: (aLayer createCacheOfType: self imageStoreClass)
]

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
Canvas >> drawDrawLayer: aLayer [

	aLayer drawOn: self
]

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
Canvas >> drawGroupLayer: aLayer [

	aLayer drawOn: self
]

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
Canvas >> drawLayer: aLayer [

	aLayer drawLayerOn: self
]

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
Canvas >> imageStoreClass [

	self subclassResponsibility
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Canvas >> paintImageStore: anImageStore [

	self paintImageStore: anImageStore sourceRect: (0@0 extent: anImageStore extent)
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Canvas >> paintImageStore: anImageStore sourceRect: aRectangle [

	self subclassResponsibility
]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Canvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [
	"Transform the receiver by the given display transformation during the execution of aBlock. The given clip rectangle defines the *global* (e.g., outer) rectangle against which the receiver should clip (which would be equivalent to 'self clipRect: aClipRect; transformBy: aDisplayTransform')."
	self clipBy: aClipRect during: [:canvas |
		canvas transformBy: aDisplayTransform during: aBlock]
]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Canvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [
	"Transform the receiver by the given display transformation during the execution of aBlock. The given clip rectangle defines the *global* (e.g., outer) rectangle against which the receiver should clip (which would be equivalent to 'self clipRect: aClipRect; transformBy: aDisplayTransform')."
	self transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Canvas >> transformBy: aDisplayTransform during: aBlock [

	self subclassResponsibility
]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Canvas >> translateBy: aPoint clippingTo: aRectangle during: aBlock [

	self clipBy: aRectangle during: [:c |
		c translateBy: aPoint during: aBlock]
]
