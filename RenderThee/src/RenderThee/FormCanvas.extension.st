Extension { #name : #FormCanvas }

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
FormCanvas >> imageStoreClass [

	^ RtFormStore
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
FormCanvas >> paintImageStore: anImageStore sourceRect: aRectangle [

	self
		translucentImage: anImageStore form
		at: 0@0
		sourceRect: aRectangle
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
FormCanvas >> transformBy: aDisplayTransform during: aBlock [

	self
		transformBy: aDisplayTransform
		clippingTo: self clipRect
		during: aBlock smoothing: 1
]

{
	#category : #'*RenderThee-override',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
FormCanvas >> translateBy: aPoint clippingTo: aRectangle during: aBlock [

	aBlock value: (self copyOffset:aPoint clipRect: aRectangle)
]
