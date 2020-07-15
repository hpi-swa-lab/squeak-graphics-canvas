Extension { #name : #FormCanvas }

{ #category : #'*RenderThee-LayerTree' }
FormCanvas class >> extent: aPoint store: anImageStoreClass do: aBlock [

	| canvas |
	canvas := self extent: aPoint.
	aBlock value: canvas.
	^ anImageStoreClass form: canvas form
]
