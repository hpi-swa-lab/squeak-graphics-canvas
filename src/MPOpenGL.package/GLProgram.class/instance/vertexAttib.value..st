usage
vertexAttib: position value: value
	gl glEnableVertexAttribArray: position.
	value isGLBuffer ifTrue: [
		gl glVertexAttribPointer: position
			with: value numElements
			with: value glType
			with: gl GL_FALSE
			with: 0
			with: nil ]
			