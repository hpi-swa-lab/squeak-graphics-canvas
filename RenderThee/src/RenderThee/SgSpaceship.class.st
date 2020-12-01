Class {
	#name : #SgSpaceship,
	#superclass : #ThumbnailImageMorph,
	#category : #'RenderThee-Demo-SpaceGame',
	#commentStamp : ''
}

{
	#category : #'event handling',
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> handlesKeyboard: evt [

	^ true
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> initialize [

	super initialize.
	self newImage: SgImages spaceship.
	self extent: 80@80.

]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> initializeRotation [

	|degrees|
	degrees := (Random new nextInt: 180).
	self rotationDegrees: degrees.
	
]

{
	#category : #'repaint boundary',
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> isRepaintBoundary [

	^ false
]

{
	#category : #'stepping and presenter',
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> step [

	self y: ((self y) - 1)
]

{
	#category : #'stepping and presenter',
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> stepTime [

	^ 0
]
