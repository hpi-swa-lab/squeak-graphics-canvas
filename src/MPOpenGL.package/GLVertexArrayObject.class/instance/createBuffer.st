initialize-release
createBuffer

	| ids |
	ids := IntegerArray new: 1.
	gl glGenVertexArrays: 1 with: ids.
	id := ids at: 1