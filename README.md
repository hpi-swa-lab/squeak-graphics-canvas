# Squeak Morphic Layers
This repository contains multiple projects closely related to (hardware-accelerated) rendering in [Squeak/Smalltalk].
Please note, that most of this is work in progress.

| Package | Description |
| --- | --- |
| [RenderThee] | A hodgepodge of projects loosely related to hardware-accelerating [Squeak/Smalltalk]'s UI framework Morphic. |
| [RawBitsBulkPlugins] | A plugin for [Squeak/Smalltalk]'s [VM]. Can improve data transfer speeds from Squeak to raw memory when writing multiple values at a time. |
| [OpenGLCanvas] | A canvas implementation that immediately maps incoming messages to [OpenGL] draw calls. |
| [ShadingLanguage] | A Smalltalk-like language for specifying shaders. Transpiles to [GLSL]. |


<!-- references -->
[Squeak/Smalltalk]: https://squeak.org
[GLSL]: https://www.khronos.org/opengl/wiki/Core_Language_(GLSL)
[VM]: https://github.com/OpenSmalltalk/opensmalltalk-vm
[OpenGL]: https://github.com/hpi-swa-lab/squeak-graphics-opengl

[RawBitsBulkPlugins]: ./RawBitsBulkPlugins
[RenderThee]: ./RenderThee
[ShadingLanguage]: ./ShadingLanguage
