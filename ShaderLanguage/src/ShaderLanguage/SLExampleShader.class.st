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
	#category : #ShaderLanguage,
	#commentStamp : 'stlu 11/11/2020 18:17'
}

{
	#category : #code,
	#timestamp : 'stlu 11/18/2020 15:30'
}
SLExampleShader class >> bloom: out inputs: in uniforms: u [

	| gamma hdrColor bloomColor result |
	gamma := 2.2.
	hdrColor := (u scene asSampler2D at: in texCoords asVector2) rgb.
	bloomColor := (u bloomBlur asSampler2D at: in texCoords) rgb.
	u bloom asBoolean ifTrue: [hdrColor := hdrColor + bloomColor].
	"tone mapping"
	result := 1.0 asVector3 - (hdrColor negated * u exposure asFloat) exp.
	"also gamma correct while we're at it"
	result := result ** (1.0 / gamma) asVector3.
	out FragColor: result @ 1.0
]

{
	#category : #code,
	#timestamp : 'stlu 11/17/2020 17:34'
}
SLExampleShader class >> gaussianKernel3 [

	^ #(
		1 2 1
		2 4 2
		1 2 1
	) asMatrix3x3
]
