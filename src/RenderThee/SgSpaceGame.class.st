Class {
	#name : #SgSpaceGame,
	#superclass : #Morph,
	#category : #'RenderThee-Demo'
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
	
	| background |
	self openInWorld.
	self color: (Color red).

	self bounds: self owner bounds.
	background := SgSpace new.
	background bounds: self bounds.
	background createStars: 40000.
	self addMorph: background.
	
	1 to: 4 do: [:i |
		| planet |
		planet := SgPlanet planet: i.
		planet center: (self bounds insetBy: planet extent // 2) randomPoint.
		self addMorph: planet].
	1 to: 15 do: [:i |
		| ship |
		ship := SgSpaceship new.
		self addMorph: ship.
		ship center: (self bounds insetBy: ship extent // 2) randomPoint.
		ship initializeRotation.
		].
	self addMorph: (FrameRateMorph new color: Color white)
]
