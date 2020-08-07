Class {
	#name : #SgPlanet,
	#superclass : #ThumbnailImageMorph,
	#instVars : [
		'rotationSpeed'
	],
	#category : #'RenderThee-Demo'
}

{ #category : #'instance creation' }
SgPlanet class >> planet: aNumber [

	^ self new
		id: aNumber;
		yourself
]

{ #category : #accessing }
SgPlanet >> id: anInteger [

	| id form |
	id := anInteger min: 4 max: 1.
	form := SgImages perform: ('planet' , id) asSymbol.
	self newImage: form.
	self extent: (form extent scaleBy: (0.5 to: 2.0 by: 0.1) atRandom asPoint)
]

{ #category : #initialization }
SgPlanet >> initialize [

	super initialize.
	rotationSpeed := (0.1 to: 2.0 by: 0.1) atRandom
]

{ #category : #'repaint boundary' }
SgPlanet >> isRepaintBoundary [

	^ true
]

{ #category : #'stepping and presenter' }
SgPlanet >> step [

	self rotationDegrees: self rotationDegrees + rotationSpeed
]

{ #category : #'stepping and presenter' }
SgPlanet >> stepTime [

	^ 0
]
