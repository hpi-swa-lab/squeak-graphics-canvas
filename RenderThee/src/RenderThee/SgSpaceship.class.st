Class {
	#name : #SgSpaceship,
	#superclass : #ThumbnailImageMorph,
	#category : #'RenderThee-Examples-SpaceGame'
}

{
	#category : #'event handling',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> handlesKeyboard: evt [

	^ true
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> initialize [

	super initialize.
	self newImage: SgImages spaceship.
	self extent: 80@80.

]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> initializeRotation [

	|degrees|
	degrees := (Random new nextInt: 180).
	self rotationDegrees: degrees.
	
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> step [

	self y: ((self y) - 1)
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpaceship >> stepTime [

	^ 0
]
