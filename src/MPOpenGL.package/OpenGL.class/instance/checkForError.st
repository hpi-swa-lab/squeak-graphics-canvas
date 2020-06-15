debugging
checkForError
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self glGetError.
	(error ~= self GL_NO_ERROR) ifTrue: [self error: (self gluErrorString: error) ]
