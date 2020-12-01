Class {
	#name : #SgSpaceship,
	#superclass : #ThumbnailImageMorph,
	#category : #'RenderThee-Demo-SpaceGame',
	#commentStamp : ''
}

{
	#category : #'event handling',
	#timestamp : ''
}
SgSpaceship >> handlesKeyboard: evt [

	^ true
]

{
	#category : #initialization,
	#timestamp : ''
}
SgSpaceship >> initialize [

	super initialize.
	self newImage: SgImages spaceship.
	self extent: 80@80.

]

{
	#category : #initialization,
	#timestamp : ''
}
SgSpaceship >> initializeRotation [

	|degrees|
	degrees := (Random new nextInt: 180).
	self rotationDegrees: degrees.
	
]

{
	#category : #'repaint boundary',
	#timestamp : ''
}
SgSpaceship >> isRepaintBoundary [

	^ false
]

{
	#category : #'stepping and presenter',
	#timestamp : ''
}
SgSpaceship >> step [

	self y: ((self y) - 1)
]

{
	#category : #'stepping and presenter',
	#timestamp : ''
}
SgSpaceship >> stepTime [

	^ 0
]
