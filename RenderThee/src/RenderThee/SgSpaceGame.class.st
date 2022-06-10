"
Open me! `SgSpaceGame open`
"
Class {
	#name : #SgSpaceGame,
	#superclass : #Morph,
	#category : #'RenderThee-Examples-SpaceGame'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/12/2021 15:37'
}
SgSpaceGame class >> open [

	self new openInWorld
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:53'
}
SgSpaceGame >> initialize [
	
	| background solarSystem |
	super initialize.
	self color: Color red.

	self bounds: (0@0 extent: Display extent).
	background := SgSpace new.
	background bounds: self bounds.
	background createStars: 1000.
	self addMorph: background.
	
	solarSystem := SgSolarSystem new.
	solarSystem extent: (self extent x min: self extent y) asPoint.
	solarSystem center: self center.
	solarSystem createPlanets: 5.
	self addMorph: solarSystem.
	
	1 to: 15 do: [:i |
		| ship |
		ship := SgSpaceship new.
		self addMorph: ship.
		ship center: (self bounds insetBy: ship extent // 2) randomPoint.
		ship initializeRotation.
		].
	self addMorph: (RtFrameRateMorph new
		setToAdhereToEdge: #right;
		color: Color white;
		top: 0;
		yourself)
]

{
	#category : #'repaint boundary',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpaceGame >> isRepaintBoundary [

	^ true
]
