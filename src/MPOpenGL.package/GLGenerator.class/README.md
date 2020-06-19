I generate Smalltalk classes to interface with OpenGL via FFI.
To do so, I require an XML based on the Khronos XML API Registry schema.

Available XML:
	- [gl.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml)
	- [glx.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/glx.xml)
	- [wgl.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/wgl.xml)
	- [egl.xml](https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/egl.xml)
Notice that only `gl.xml` is actually actively supported.

To re-generate the interface do the following:

```smalltalk
"Drop XML file into squeak window"
"Open inspector"
(GLGenerator xml: self) generateApi: 'GL'
```