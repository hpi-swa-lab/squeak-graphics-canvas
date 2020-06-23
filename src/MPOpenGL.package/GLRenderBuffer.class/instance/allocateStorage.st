storage
allocateStorage
	"renderbuffers are empty at initialization. Before you can bind them to
	a Framebuffer Object, you must allocate storage for the renderbuffer"
	isStorageAllocated
		ifTrue: ["calling this function on a renderbuffer that has already had
			this function called on it will cause it to deallocate any
			resources associated with the previous call and allocate new
			storage "
			self error: 'Renderbuffer asked to allocate storage twice']
		ifFalse: [gl
				glRenderbufferStorageMultisample: GL_RENDERBUFFER
				with: samples
				with: internalFormat
				with: width
				with: height]