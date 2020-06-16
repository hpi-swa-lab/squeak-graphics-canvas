initialization
delete

	ogl makeCurrentDuring: [ tex delete ].
	ogl destroy.
	
	super delete