Extension { #name : #Canvas }

{ #category : #'*RenderThee-LayerTree' }
Canvas >> drawDrawLayer: aLayer [

	aLayer commands do: [:cmd |
		cmd drawOn: self]
]

{ #category : #'*RenderThee-LayerTree' }
Canvas >> drawGroupLayer: aLayer [

	aLayer children do: [:childLayer |
		self transformBy:	aLayer transform clippingTo: aLayer clipRect during: [ :c | c drawLayer: childLayer ]]
]

{ #category : #'*RenderThee-LayerTree' }
Canvas >> drawLayer: aLayer [

	aLayer drawOn: self
]
