A GLFrameBuffer is a Squeak representation of OpenGL Framebuffer Objects.

Framebuffer Objects are OpenGL Objects, which allow for the creation of user-defined Framebuffers. With them, one can render to non-Default Framebuffer locations, and thus render without disturbing the main screen. 

https://www.khronos.org/opengl/wiki/Framebuffer_Object

Instance Variables
	target: 		target must be either GL_DRAW_FRAMEBUFFER, GL_READ_FRAMEBUFFER or GL_FRAMEBUFFER.
			If a framebuffer object is bound to GL_DRAW_FRAMEBUFFER or GL_READ_FRAMEBUFFER, it becomes the target for rendering or readback operations, respectively, until it is deleted or another framebuffer is bound to the corresponding bind point.
			Calling glBindFramebuffer with target​ set to GL_FRAMEBUFFER binds framebuffer to both the read and draw framebuffer targets. framebuffer​ is the name of a framebuffer object previously returned from a call to glGenFramebuffers, or zero to break the existing binding of a framebuffer object to target. 
