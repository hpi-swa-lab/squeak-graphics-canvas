before each
setUpWindow
	| gl |
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0 @ 0 extent: 1000 asPoint.
	gl := GL4_6.
	
	true
		ifTrue: [ogl := gl newIn: bounds]
		ifFalse: [ogl := gl newInGLFW: bounds]