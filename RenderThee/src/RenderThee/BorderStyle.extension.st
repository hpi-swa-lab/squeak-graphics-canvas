Extension { #name : #BorderStyle }

{
	#category : #'*RenderThee',
	#timestamp : ''
}
BorderStyle >> isTransparent [

	^ self width isZero or: [self color isTransparent]
]
