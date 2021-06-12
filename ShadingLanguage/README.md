# Shlang
Squeak Shading Language is a Smalltalk-like language for specifying shaders. It transpiles to [GLSL].

This was part of a student's project. Slides can be found [here](https://docs.google.com/presentation/d/1BvKP5Tqo6tEQxD6LtlnqPKxpmhiRHrOZJGgvTxChf18/edit?usp=sharing).

## Examples

```smalltalk
fragmentShader: out inputs: in uniforms: u

	| texCoords color texel |
	texCoords := in TexCoords beFloatVector2.
	texel := u scene beFloat2DSampler at: texCoords.
	
	color := texel.
	(u chaos beBoolean or: u shake beBoolean) ifTrue: [
		| kernel |
		kernel := u chaos beBoolean
					ifTrue: [u edgeKernel beFloatArray: 9]
					ifFalse: [u blurKernel beFloatArray: 9].
		color := 0.0 @ 0.0 @ 0.0 @ 1.0.
		0 to: 8 do: [:i |
			| sample offset k |
			offset := (u offsets beFloatVector2Array: 9) at: i.
			sample := (u scene at: texCoords + offset) rgb.
			k := kernel at: i.
			color := color + (sample * k @ 0.0)]].
	u confuse beBoolean ifTrue: [
		color := 1.0 - texel rgb @ 1.0].
	
	out color: color
```

```smalltalk
vertexShader: out inputs: in uniforms: u

	| vertex pos texCoords time |
	vertex := in vertex beFloatVector4.
	time := u time beFloat.
	
	pos := vertex xy.
	u shake beBoolean ifTrue: [
		pos := (10.0@15.0 * time) cos * 0.01 + pos].
	out gl_Position: pos @ 0.0 @ 1.0.
	
	texCoords := vertex zw.
	u chaos beBoolean ifTrue: [
		texCoords := texCoords + (time sin @ time cos * 0.3)].
	u confusion beBoolean ifTrue: [
		texCoords := 1.0 - texCoords].
	out TexCoords: texCoords
```

<!-- references -->
[Squeak/Smalltalk]: https://squeak.org
[Metacello]: https://github.com/Metacello/metacello
[VM]: https://github.com/OpenSmalltalk/opensmalltalk-vm
[GLSL]: https://www.khronos.org/opengl/wiki/Core_Language_(GLSL)