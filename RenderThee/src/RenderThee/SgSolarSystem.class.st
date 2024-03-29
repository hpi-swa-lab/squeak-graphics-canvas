Class {
	#name : #SgSolarSystem,
	#superclass : #Morph,
	#instVars : [
		'rotationSpeed'
	],
	#category : #'RenderThee-Examples-SpaceGame'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSolarSystem >> createPlanet: planetID [

	| morph id form |
	id := planetID min: 4 max: 1.
	form := SgImages perform: ('planet' , id) asSymbol.
	morph := ThumbnailImageMorph new.
	morph newImage: form.
	morph extent: (form extent scaleBy: (0.5 to: 2.0 by: 0.1) atRandom asPoint).
	^ morph
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSolarSystem >> createPlanets: numPlanets [

	| planets radius maxPlanetExtent |
	planets := Array new: numPlanets streamContents: [:stream |
		1 to: numPlanets do: [:i |
			stream nextPut: (self createPlanet: (i \\ 4) + 1)]].
	
	maxPlanetExtent := (planets collect: #extent) max.
	radius := (self extent x min: self extent y) - (maxPlanetExtent x max: maxPlanetExtent y).
	self assert: radius positive.
	
	planets withIndexDo: [:planet :i |
		planet center: (self bounds insetBy: planet extent // 2) randomPoint.
		self addMorph: planet]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSolarSystem >> initialize [

	super initialize.
	rotationSpeed := (0.1 to: 2.0 by: 0.1) atRandom.
	self color: Color transparent
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSolarSystem >> step [

	self rotationDegrees: self rotationDegrees + rotationSpeed
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
SgSolarSystem >> stepTime [

	^ 0
]
