before each
verifyOglInitializationWorked
	gl ifNil: [^self error: 'Unable to create renderer'].