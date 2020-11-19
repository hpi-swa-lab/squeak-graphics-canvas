Extension { #name : #AbstractFont }

{ #category : #'*OpenGLCanvas' }
AbstractFont >> advanceOf: aCharacter [

	^ self widthOf: aCharacter
]
