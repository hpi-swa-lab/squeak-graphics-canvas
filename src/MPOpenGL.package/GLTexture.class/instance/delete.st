deletion
delete
	|texIDs|
	texIDs := IntegerArray new: 1.
	texIDs at: 1 put: id.
	GL value glDeleteTextures: 1 with: texIDs.
	GL value checkForError.