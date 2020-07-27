Extension { #name : #Rectangle }

{ #category : #'*RenderThee' }
Rectangle class >> infinite [

	^ self
		origin: -1e10 asPoint
		corner: 1e10 asPoint
]
