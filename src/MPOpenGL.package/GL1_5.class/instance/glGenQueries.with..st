as yet unclassified
glGenQueries: n with: ids

	<apicall: void 'glGenQueries' (long ulong*) module: 'libGL.so'>
	^ self externalCallFailed