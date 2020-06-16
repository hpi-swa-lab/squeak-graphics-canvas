enter
finalEnterActions: leavingProject

	super finalEnterActions: leavingProject.
	self world initOpenGL ifFalse: [
		OSProcess thisOSProcess stdOut
			nextPutAll: 'Failed';
			cr; lf.
		self exit].
	OSProcess thisOSProcess stdOut
			nextPutAll: 'Succeeded';
			cr; lf.