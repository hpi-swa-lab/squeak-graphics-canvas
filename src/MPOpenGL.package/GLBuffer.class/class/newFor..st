instance creation
newFor: openGlInterface
	^ self new
		gl: openGlInterface;
		createBufffer;
		yourself.