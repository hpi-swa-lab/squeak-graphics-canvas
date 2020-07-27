Extension { #name : #BorderStyle }

{ #category : #'*RenderThee' }
BorderStyle >> isTransparent [

	^ self width isZero or: [self color isTransparent]
]
