initialize-release
create
	"generate framebuffer object name (id)"
	| ids |
	ids := IntegerArray new: 1.
	gl glGenFramebuffers: 1 with: ids.
	id := ids first.