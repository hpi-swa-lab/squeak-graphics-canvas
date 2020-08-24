"
Open me! `SgSpaceGame open`
"
Class {
	#name : #SgSpaceGame,
	#superclass : #Morph,
	#category : #'RenderThee-Demo-SpaceGame'
}

{ #category : #'instance creation' }
SgSpaceGame class >> open [

	self new open
]

{ #category : #'repaint boundary' }
SgSpaceGame >> isRepaintBoundary [

	^ true
]

{ #category : #initialization }
SgSpaceGame >> open [
	
	| background solarSystem |
	self openInWorld.
	self color: (Color red).

	self bounds: self owner bounds.
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
	self addMorph: (FrameRateMorph new color: Color white)
]