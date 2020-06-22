usage
data: anArray usage: aUsageEnum

	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glBufferData: GL_ARRAY_BUFFER with: anArray byteSize with: anArray with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType