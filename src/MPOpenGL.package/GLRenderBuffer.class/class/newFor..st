instance creation
newFor: openGlInterface
	^ self new
		gl: openGlInterface;
		createBuffer;
		yourself.