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
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #code,
	#timestamp : 'zagto 12/1/2020 18:39'
}
SLExampleShader class >> bloom: out inputs: in uniforms: u [

	| gamma hdrColor bloomColor result |
	gamma := 2.2.
	hdrColor := (u scene beFloat2DSampler at: in texCoords beFloatVector2) rgb.
	bloomColor := (u bloomBlur beFloat2DSampler at: in texCoords beFloatVector2 "todo") rgb.
	u bloom beBoolean ifTrue: [hdrColor := hdrColor + bloomColor].
	"tone mapping"
	result := 1.0 asVector3 - (hdrColor negated * u exposure beFloat) exp.
	"also gamma correct while we're at it"
	result := result ** (1.0 / gamma) asVector3.
	out FragColor: 1.0 @ result "hack"
]

{
	#category : #code,
	#timestamp : ''
}
SLExampleShader class >> gaussianKernel3 [

	^ #(
		1 2 1
		2 4 2
		1 2 1
	) asMatrix3x3
]
