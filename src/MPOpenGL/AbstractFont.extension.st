Extension { #name : #AbstractFont }

{ #category : #'*MPOpenGL' }
AbstractFont >> advanceOf: aCharacter [

	^ self widthOf: aCharacter
]
