initialize-release
create

	| ids |
	ids := IntegerArray new: 1.
	gl glGenBuffers: 1 with: ids.
	id := ids first