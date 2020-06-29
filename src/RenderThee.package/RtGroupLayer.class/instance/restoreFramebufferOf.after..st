drawing
restoreFramebufferOf: aRenderer after: aBlock
	| oldFramebuffer oldExtent ogl oldViewport ret |
	ogl := GL value.
	
	oldFramebuffer := aRenderer currentFramebuffer.
	oldExtent := aRenderer currentExtent.
	oldViewport := IntegerArray new: 4.
	ogl glGetIntegerv: GL_VIEWPORT with: oldViewport.
	
	ret := aBlock value.
	
	aRenderer currentFramebuffer: oldFramebuffer.
	aRenderer currentExtent: oldExtent.
	oldFramebuffer ifNotNil: [ oldFramebuffer bind ].
	ogl glViewport: oldViewport first with: oldViewport second with: oldViewport third with: oldViewport fourth.
	
	^ ret