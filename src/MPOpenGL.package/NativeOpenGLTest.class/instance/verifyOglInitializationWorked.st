before each
verifyOglInitializationWorked
	ogl ifNil: [^self error: 'Unable to create renderer'].