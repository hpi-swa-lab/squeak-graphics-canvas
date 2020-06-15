before each
setUpWindow
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0@0 extent: 100@100.
	ogl := GL4_6 newIn: bounds.
