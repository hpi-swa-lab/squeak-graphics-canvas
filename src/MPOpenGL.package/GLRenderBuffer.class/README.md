A GLRenderBuffer is a Squeak Object Representation of OpenGl Renderbuffer Objects.

Renderbuffer Objects are OpenGL Objects that contain images. They are created and used specifically with Framebuffer Objects. They are optimized for use as render targets, while Textures may not be, and are the logical choice when you do not need to sample (i.e. in a post-pass shader) from the produced image. If you need to resample (such as when reading depth back in a second shader pass), use Textures instead. Renderbuffer objects also natively accommodate Multisampling (MSAA).

https://www.khronos.org/opengl/wiki/Renderbuffer_Object
https://www.khronos.org/registry/OpenGL-Refpages/es3.0/html/glRenderbufferStorage.xhtml

Instance Variables
	internalFormat:  specifies the internal format to be used for the renderbuffer object's storage and must be a color-renderable, depth-renderable, or stencil-renderable format
