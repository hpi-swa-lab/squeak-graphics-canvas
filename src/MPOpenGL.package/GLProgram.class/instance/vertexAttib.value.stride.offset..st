usage
vertexAttib: position value: value stride: stride offset: offset
	gl glEnableVertexAttribArray: position.
	value isGLBuffer ifTrue: [
		gl glVertexAttribPointer: position
			with: value componentsPerVertex
			with: value glType
			with: gl GL_FALSE
			with: stride
			with: (ExternalAddress new fromInteger: offset) ]
			