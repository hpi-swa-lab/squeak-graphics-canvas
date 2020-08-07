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
	self extent: 80@80.

]

{ #category : #initialization }
SgSpaceship >> initializeRotation [

	|degrees|
	degrees := (Random new nextInt: 180).
	self rotationDegrees: degrees.
	
]

{ #category : #'repaint boundary' }
SgSpaceship >> isRepaintBoundary [

	^ true
]

{ #category : #'stepping and presenter' }
SgSpaceship >> step [

	self y: ((self y) - 1)
]

{ #category : #'stepping and presenter' }
SgSpaceship >> stepTime [

	^ 0
]
