initialize
openGLLibraryName
	^Smalltalk osVersion = 'linux-gnu'
		ifTrue: ['libGL.so.1']
		ifFalse: ['GL']
