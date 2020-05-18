usage
data: anArray usage: aUsageEnum componentsPerVertex: aNumber
	gl glBindBuffer: gl GL_ARRAY_BUFFER with: id.
	gl glBufferData: gl GL_ARRAY_BUFFER with: anArray byteSize with: anArray with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType: gl.
	componentsPerVertex := aNumber.