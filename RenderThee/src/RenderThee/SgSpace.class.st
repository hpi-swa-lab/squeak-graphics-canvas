Class {
	#name : #SgSpace,
	#superclass : #Morph,
	#category : #'RenderThee-Examples-SpaceGame'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpace >> createStars: numStars [

	1 to: numStars do: [:i |
		| star |
		star := EllipseMorph new.
		star borderColor: Color random.
		star color: Color white.
		star extent: (1 to: 4) atRandom asPoint.
		star center: (self bounds insetBy: star extent // 2) randomPoint.
		self addMorph: star]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSpace >> initialize [

	super initialize.
	self color: Color black
]
