initialize-release
create
	"generate renderbuffer object name (id)"
	| ids |
	ids := IntegerArray new: 1.
	gl glGenRenderbuffers: 1 with: ids.
	id := ids first.
	
