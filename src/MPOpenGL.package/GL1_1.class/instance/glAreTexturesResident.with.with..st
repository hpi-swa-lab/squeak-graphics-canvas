as yet unclassified
glAreTexturesResident: n with: textures with: residences

	<apicall: ulong 'glAreTexturesResident' (long ulong* ulong*) module: 'libGL.so'>
	^ self externalCallFailed