deletion
delete

	|texIDs|
	texIDs := IntegerArray with: id.
	GL value glDeleteTextures: 1 with: texIDs.
	GL value checkForError.