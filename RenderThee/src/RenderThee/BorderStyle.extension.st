Extension { #name : #BorderStyle }

{
	#category : #'*RenderThee',
	#timestamp : 'stlu 11/13/2020 18:20'
}
BorderStyle >> isTransparent [

	^ self width isZero or: [self color isTransparent]
]
