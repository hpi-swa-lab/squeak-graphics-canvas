as yet unclassified
glGenTextures: n with: textures

	<apicall: void 'glGenTextures' (long ulong*) module: 'libGL.so'>
	^ self externalCallFailed