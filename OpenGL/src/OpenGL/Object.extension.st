Extension { #name : #Object }

{ #category : #'*OpenGL' }
Object >> isGLBuffer [

	self flag: #todo. "Can this move down to GLObject?"
	^ false
]
