# RenderThee
A hodgepodge of projects loosely related to hardware-accelerating [Squeak/Smalltalk]'s UI framework Morphic.

## Installation
> Requires Squeak-trunk

> Requires a recent [VM] for `FloatArray` primitives to work correctly. [opensmalltalk-vm@`9f1b464`](https://github.com/OpenSmalltalk/opensmalltalk-vm/commit/9f1b4644e7396e473bd9bb4cf67f8a9d5a4e11d6) builds and works.

> Requires a recent [Metacello]. At least [metacello@`f336f66`](https://github.com/Metacello/metacello/commit/f336f66ba853f340edaffd5613a730b76be71676) for GitHub authorization. At least [metacello@`88e4d13`](https://github.com/Metacello/metacello/commit/88e4d1341906b1eb591ba4f05a5df10d021cc2a9) on Windows.

> Requires a [GitHub personal access token](https://github.com/settings/tokens) for [Metacello] to fetch this repository (since it's private).

```smalltalk
Metacello new
	baseline: 'RenderThee';
	repository: 'github://hpi-swa-lab/squeak-morphic-layers:main/RenderThee/src/';
	password: ''; "<-- put your GitHub personal access token here"
	load.
```
To see which dependencies will be installed or to find different load targets, look at the project's Metacello [baseline](./src/BaselineOfRenderThee/BaselineOfRenderThee.class.st).

<!-- references -->
[Squeak/Smalltalk]: https://squeak.org
[Metacello]: https://github.com/Metacello/metacello
[VM]: https://github.com/OpenSmalltalk/opensmalltalk-vm