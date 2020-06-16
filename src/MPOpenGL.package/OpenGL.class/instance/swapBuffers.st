initialize
swapBuffers
	"Swap the receiver's buffers. Return true if successful, false otherwise"
	usesGLFW ifTrue: [^ GLFW swapBuffers: myHandle].
	
	noSwap ifTrue:[noSwap := false. ^ self.].
	^(self primSwapBuffers: myHandle) notNil