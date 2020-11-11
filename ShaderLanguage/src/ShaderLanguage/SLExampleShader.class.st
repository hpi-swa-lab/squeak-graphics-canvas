"
```glsl
#version 330 core

out vec4 FragColor;
in vec2 TexCoords;
uniform sampler2D scene;
uniform sampler2D bloomBlur;
uniform bool bloom;
uniform float exposure;

void main() {
	const float gamma = 2.2;
	vec3 hdrColor = texture(scene, TexCoords).rgb;
	vec3 bloomColor = texture(bloomBlur, TexCoords).rgb;
	if (bloom) hdrColor += bloomColor; // additive blending
	// tone mapping
	vec3 result = vec3(1.0) - exp(-hdrColor * exposure);
	// also gamma correct while we're at it
	result = pow(result, vec3(1.0 / gamma));
	FragColor = vec4(result, 1.0);
}
```
"
Class {
	#name : #SLExampleShader,
	#superclass : #Object,
	#category : #ShaderLanguage
}

{ #category : #code }
SLExampleShader class >> main [

	"<out: 'FragColor' type: #Vector4>
	<in: 'TexCoords' type: #Vector2>
	<uniform: 'scene' type: #Sampler2D>
	<uniform: 'bloomBlur' type: #Sampler2D>
	<uniform: 'bloom' type: #Boolean>
	<uniform: 'exposure' type: #Float>"
	| FragColor TexCoords bloom gamma hdrColor bloomColor result arr1 arr2 myArray |
	FragColor := Vector4 out: 'FragColor'.
	TexCoords := Vector2 in: 'TexCoords'.
	bloom := Boolean uniform: 'bloom'.
	Vector4 from: { 1.0 . TexCoords . 1.3 }.
	Array from: { 1 . 0 . 1 . 4 . 5 }.
	arr1 := Array new: 5.
	arr2 := Array new: 6.
	myArray := true ifTrue: [arr1] ifFalse: [arr2].
	
	
	gamma := 2.2.
	hdrColor := ((Sampler2D uniform: 'scene') at: TexCoords) rgb.
	bloomColor := ((Sampler2D uniform: 'bloomBlur') at: TexCoords) rgb.
	bloom ifTrue: [
		hdrColor := hdrColor + bloomColor].
	"tone mapping"
	result := (Vector3 from: 1.0) - (hdrColor negated * (Float uniform: 'exposure')) exp.
	"also gamma correct while we're at it"
	result := result ** (Vector3 value: 1.0 / gamma).
	FragColor := Vector4 value: result value: 1.0
]

{ #category : #'variable declaration' }
SLExampleShader class >> resources [

	^ {
		{ #out . 'FragmentColor' . Vector4 }.
		{ #in . 'TexCoords' . Vector2 }.
		{ #uniform . 'scene' . Sampler2D }.
		{ #uniform . 'bloomBlur' . Sampler2D }.
		{ #uniform . 'bloom' . Boolean }.
		{ #uniform . 'exposure' . Float }
	}
]
