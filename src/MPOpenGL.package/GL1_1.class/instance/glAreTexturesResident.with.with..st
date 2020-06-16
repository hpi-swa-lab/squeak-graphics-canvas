as yet unclassified
glAreTexturesResident: n with: textures with: residences

	<apicall: GLboolean 'glAreTexturesResident' (GLsizei GLuint* GLboolean*)>
	^ self externalCallFailed