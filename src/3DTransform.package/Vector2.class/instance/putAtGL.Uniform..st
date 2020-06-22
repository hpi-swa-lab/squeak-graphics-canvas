accessing
putAtGL: gl Uniform: location
	"gl glUniform2fv: location with: 1 with: self"
	gl glUniform2f: location with: self x with: self y