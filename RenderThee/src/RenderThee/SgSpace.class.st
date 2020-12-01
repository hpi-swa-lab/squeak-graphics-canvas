Class {
	#name : #SgSpace,
	#superclass : #Morph,
	#category : #'RenderThee-Demo-SpaceGame',
	#commentStamp : ''
}

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpace >> initialize [

	super initialize.
	self color: Color black
]

{
	#category : #'repaint boundary',
	#timestamp : 'stlu 11/13/2020 18:20'
}
SgSpace >> isRepaintBoundary [

	^ true
]
