Extension { #name : #FormCanvas }

{ #category : #'*RenderThee-LayerTree' }
FormCanvas >> imageStoreClass [

	^ RtFormStore
]

{ #category : #'*RenderThee-LayerTree' }
FormCanvas >> paintImageStore: anImageStore sourceRect: aRectangle [

	self
		translucentImage: anImageStore form
		at: 0@0
		sourceRect: aRectangle
]

{ #category : #'*RenderThee' }
FormCanvas >> transformBy: aDisplayTransform during: aBlock [

	self
		transformBy: aDisplayTransform
		clippingTo: self clipRect
		during: aBlock smoothing: 1
]

{ #category : #'*RenderThee-override' }
FormCanvas >> translateBy: aPoint clippingTo: aRectangle during: aBlock [

	aBlock value: (self copyOffset:aPoint clipRect: aRectangle)
]
