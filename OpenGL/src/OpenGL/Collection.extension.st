Extension { #name : #Collection }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Collection class >> new: sizeRequested during: aBlock [

	^ aBlock value: (self new: sizeRequested)
]
