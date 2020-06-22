initialization
initialize

	| texIDs |
	texIDs := IntegerArray new: 1.
	GL value glGenTextures: 1 with: texIDs.
	GL value checkForError.
	id := texIDs at: 1.