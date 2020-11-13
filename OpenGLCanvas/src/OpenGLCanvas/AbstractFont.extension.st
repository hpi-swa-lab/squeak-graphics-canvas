Extension { #name : #AbstractFont }

{
	#category : #'*OpenGLCanvas',
	#timestamp : ''
}
AbstractFont >> advanceOf: aCharacter [

	^ self widthOf: aCharacter
]
