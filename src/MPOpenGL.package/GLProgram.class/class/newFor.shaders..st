instance creation
newFor: openGlInterface shaders: aCollection

	^ self new
		gl: openGlInterface;
		shaders: aCollection;
		setUpProgram;
		yourself