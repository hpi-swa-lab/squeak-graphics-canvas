usage
data: anArray usage: aUsageEnum componentsPerVertex: aNumber

	bytesPerElement := anArray byteSize / anArray size.
	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glBufferData: GL_ARRAY_BUFFER
		with: anArray byteSize + bytesPerElement * 2
		with: anArray
		with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType.
	componentsPerVertex := aNumber