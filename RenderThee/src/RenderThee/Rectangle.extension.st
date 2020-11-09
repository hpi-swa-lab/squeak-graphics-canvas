Extension { #name : #Rectangle }

{ #category : #'*RenderThee' }
Rectangle class >> infinite [

	^ self
		origin: -1e10 asPoint
		corner: 1e10 asPoint
]

{ #category : #'*RenderThee-Demo' }
Rectangle >> randomPoint [

	^ (origin x to: corner x) atRandom @ (origin y to: corner y) atRandom
]