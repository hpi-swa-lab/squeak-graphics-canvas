commands
glUnmapBuffer: target

	<apicall: GLboolean 'glUnmapBuffer' (GLenum)>
	^ self externalCallFailed