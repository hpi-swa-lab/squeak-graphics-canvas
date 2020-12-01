Extension { #name : #AbstractFont }

{
	#category : #'*OpenGLCanvas',
	#timestamp : 'stlu 11/13/2020 18:20'
}
AbstractFont >> advanceOf: aCharacter [

	^ self widthOf: aCharacter
]
