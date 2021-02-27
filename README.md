# Squeak Morphic Layers
This repository contains multiple projects closely related to rendering.

| Package | Description |
| :--- | :--- |
| MPOpenGL | Abstractions for anything OpenGL related. |
| 3DTransform<br>2DTransform | Various display transforms. |
| RenderThee | Alternative Morphic rendering based on layer composition. |
| Vulkan-FFI-Support | **WIP:** Abstractions for anything Vulkan related. |

## How to Install

> **WARNING! We override some system methods.**

> A Squeak trunk version (e.g. `20076` or later) with a recent VM (e.g. `202011260348` or later) is required

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

3. Manually checkout the following packages in this order and only afterwards checkout everything else:
    1. `3DTransform`
    2. `OpenGL`
    3. `GLFW`

### Post-install
```smalltalk
FFICallbackContext defineFields.
ExternalObject withAllSubclassesDo: [:cls | cls compileAll].
```

## Example
```smalltalk
"Opens a new window (using GLFW) & uses the OpenGL canvas to show the current World"
GLFWLibrary updateInstance.
GLCanvas exampleWorld.
```

<!-- Reference -->
[GLFW]: https://www.glfw.org/download.html
[OpenGL]: https://www.khronos.org/opengl/wiki/Getting_Started#Downloading_OpenGL
[Squot]: https://github.com/hpi-swa/Squot
