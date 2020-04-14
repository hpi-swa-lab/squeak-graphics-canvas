as yet unclassified
getString: name
	<apicall: char* 'glGetString' (ulong) module: 'libGL.so'>
	^self externalCallFailed