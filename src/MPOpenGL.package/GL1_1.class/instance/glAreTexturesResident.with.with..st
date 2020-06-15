as yet unclassified
glAreTexturesResident: n with: textures with: residences

	<apicall: ulong 'glAreTexturesResident' (long ulong* ulong*)>
	^ self externalCallFailed