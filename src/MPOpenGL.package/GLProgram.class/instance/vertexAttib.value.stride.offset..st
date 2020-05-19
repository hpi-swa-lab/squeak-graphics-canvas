usage
vertexAttib: position value: value stride: stride offset: offset
 	| byteOffset |
	byteOffset := ExternalAddress new fromInteger: offset * value bytesPerElement.
	gl glEnableVertexAttribArray: position.
	value isGLBuffer ifTrue: [
		gl glVertexAttribPointer: position
			with: value componentsPerVertex
			with: value glType
			with: gl GL_FALSE
			with: stride * value bytesPerElement
			with: byteOffset ]
			