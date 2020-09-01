# Squeak Morphic Layers
This repository contains multiple projects closely related to rendering.

| Package | Description |
| :--- | :--- |
| MPOpenGL | Abstractions for anything OpenGL related. |
| 3DTransform | Various display transforms. |
| RenderThee | Alternative Morphic rendering based on layer composition. |
| Vulkan-FFI-Support | Support for ffi callbacks. |
| | |
<br>

## How to Install
> **WARNING! We override some system methods.**

> A Squeak trunk version (e.g. `19831` or later) with a recent VM (e.g. `202008310122` or later) is required

### External Dependencies
Make the [GLFW] & [OpenGL] shared libraries available to Squeak (e.g. by setting `LD_LIBRARY_PATH`).

*Note: OpenGL typically comes with the system and should be automatically found, unless it is not in Squeak's library path.*

### In-Image
1. Install latest FFI
    ```smalltalk
    Installer squeak
      project: 'FFI';
      install: 'FFI-Pools';
      install: 'FFI-Kernel';
      install: 'FFI-Tools';
      install: 'FFI-Tests';
      install: 'FFI-PoolsTests'
    ```

#### Using GitBrowser
1. Install [Squot]
    ```smalltalk
    Installer installGitInfrastructure.
    ```
2. [Clone this repository](https://github.com/hpi-swa/Squot#getting-started-with-an-existing-remote-project)

#### Using Monticello
1. Clone this repository somewhere on your file system
2. Ensure that you have [Tonel] installed
    ```smalltalk
    Metacello new
      repository: 'github://squeak-smalltalk/squeak-tonel:squeak';
      baseline: 'Tonel';
      load.
    ```
3. Add the `src/` folder of this repository as a `tonel://` repository
4. Load the individual packages via Monticello in the following order:
    1. `3DTransform`
    2. `Vulkan-FFI-Support`
    3. `MPOpenGL`
    4. `RenderThee`

### Post-install
```smalltalk
FFICallbackContext defineFields.
ExternalObject withAllSubclassesDo: [:cls | cls compileAll].
```


## Test it out
### Mirror of ActiveWorld
```smalltalk
"Opens a new window (using GLFW) & uses layer tree based rendering to show the ActiveWorld"
RtMirrorControl new openInWorld
```

### Custom Project
```smalltalk
"Enter a project using the new rendering"
project := RtMorphicProject new.
ProjectViewMorph openOn: project.
project enter.

"Once there, you can check out this demo (running much faster than before)"
SgSpaceGame open
```

### Built-in Examples
```smalltalk
"Build a layer tree of the ActiveWorld and render it as a Form"
RtRecordingCanvas example2.

"Test the OpenGL canvas by drawing a Browser with it"
GLCanvas exampleWindow.

"Capture a picture (display list) of the ActiveWorld and show it as a Form"
PicPictureCanvas example1.

"Open a blank GLFW window"
GLFW example1.
```

### OpenGL Generation
```smalltalk
"Generate the OpenGL FFI interface"
url := 'https://github.com/KhronosGroup/OpenGL-Registry/raw/master/xml/gl.xml'.
txt := (WebClient httpGet: url) content.
xml := XMLDOMParser parseDocumentFrom: txt readStream.
generator := GLGenerator xml: xml.
generator generateApi: 'GL'
```

<!-- Reference -->
[Metacello]: https://github.com/Metacello/metacello
[Tonel]: https://github.com/squeak-smalltalk/squeak-tonel
[GLFW]: https://www.glfw.org/download.html
[OpenGL]: https://www.khronos.org/opengl/wiki/Getting_Started#Downloading_OpenGL
[Squot]: https://github.com/hpi-swa/Squot