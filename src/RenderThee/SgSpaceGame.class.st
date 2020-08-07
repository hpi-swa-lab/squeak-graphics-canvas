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
	|backgroud|
	self openInWorld.
	"form := SgImages space.
	self newImage: (form magnifyBy: (self world extent / form extent))."
	
	backgroud := RectangleMorph new.
	backgroud color: (Color black).

	self addMorph: backgroud.
	self bounds: self owner bounds.
	backgroud bounds: self bounds.
	
	1 to: 40000 do: [:i |
		| star |
		star := EllipseMorph new.
		star borderColor: (Color random).
		star color: (Color white).
		star extent: ((1@1)+((i/40000)@(i/40000) truncated)).
		star center: (self bounds insetBy: star extent // 2) randomPoint.
		self addMorph: star].
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
