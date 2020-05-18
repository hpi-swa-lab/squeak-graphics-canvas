*MPOpenGL
putAtGL: gl Uniform: location
	{ncols. nrows} caseOf: {
		[#(4 4)] -> [ ^gl glUniformMatrix4fv: location with: 1 with: gl GL_FALSE with: self asFloatArray  ]
	}.
	self notYetImplemented.