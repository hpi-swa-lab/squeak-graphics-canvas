initialize-release
create
	| n |
	n := 1.
	bufferArray := IntegerArray new: 1.
	gl glGenRenderbuffers: n with: bufferArray.
	
