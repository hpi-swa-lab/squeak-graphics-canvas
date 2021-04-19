Extension { #name : #AbstractFont }

{
	#category : #'*OpenGLCanvas',
	#'squeak_changestamp' : ''
}
AbstractFont >> advanceOf: aCharacter [

	^ self widthOf: aCharacter
]
