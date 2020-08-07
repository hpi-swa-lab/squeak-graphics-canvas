Class {
	#name : #SgSpaceGame,
	#superclass : #ThumbnailImageMorph,
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

	| form ship |
	self openInWorld.
	form := SgImages space.
	self newImage: (form magnifyBy: (self world extent / form extent)).
	self bounds: self owner bounds.
	1 to: 4 do: [:i |
		| planet |
		planet := SgPlanet planet: i.
		planet center: (self bounds insetBy: planet extent // 2) randomPoint.
		self addMorph: planet].
	ship := SgSpaceship new.
	self addMorph: ship.
	ship center: self center.
	self addMorph: (FrameRateMorph new color: Color white)
]
