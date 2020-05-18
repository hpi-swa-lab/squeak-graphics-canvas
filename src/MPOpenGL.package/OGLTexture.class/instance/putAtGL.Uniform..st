as yet unclassified
putAtGL: gl Uniform: location
	gl glActiveTexture: gl GL_TEXTURE0.
	gl bindTexture: self.
	gl glUniform1i: location with: 0.