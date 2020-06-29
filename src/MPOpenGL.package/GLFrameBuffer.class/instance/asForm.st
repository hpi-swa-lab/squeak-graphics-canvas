binding
asForm

	| viewport data |
	viewport := IntegerArray new: 4.
	GL value glGetIntegerv: GL_VIEWPORT with: viewport.
	data := ByteArray new: viewport third * (viewport fourth * 4).
	
	self boundDo: [
		GL value
			glReadPixels: 0
			with: 0
			with: viewport third
			with: viewport fourth
			with: GL_BGRA
			with: GL_UNSIGNED_INT_8_8_8_8
			with: data].
	
	^ Form
		extent: viewport third @ viewport fourth
		depth: 32
		bits: ((Bitmap new: viewport third * viewport fourth * 4)
			copyFromByteArray: data;
			yourself)