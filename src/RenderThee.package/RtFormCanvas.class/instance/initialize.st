initialization
initialize

	super initialize.
	saveStack := OrderedCollection new.
	transform := Matrix4x4 identity