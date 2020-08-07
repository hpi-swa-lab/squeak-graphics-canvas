Class {
	#name : #SgSpaceship,
	#superclass : #ThumbnailImageMorph,
	#category : #'RenderThee-Demo'
}

{ #category : #'event handling' }
SgSpaceship >> handlesKeyboard: evt [

	^ true
]

{ #category : #initialization }
SgSpaceship >> initialize [

	super initialize.
	self newImage: SgImages spaceship.
	self extent: 200@200
]

{ #category : #'repaint boundary' }
SgSpaceship >> isRepaintBoundary [

	^ true
]
