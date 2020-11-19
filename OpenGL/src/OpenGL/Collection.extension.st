Extension { #name : #Collection }

{ #category : #'*OpenGL' }
Collection class >> new: sizeRequested during: aBlock [

	^ aBlock value: (self new: sizeRequested)
]
