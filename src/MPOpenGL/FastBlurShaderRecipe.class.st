Class {
	#name : #FastBlurShaderRecipe,
	#superclass : #GLShaderRecipe,
	#category : #'MPOpenGL-Shaders'
}

{ #category : #code }
FastBlurShaderRecipe >> fragmentShader [
	^'#version 330 core
out vec4 gl_FragColor;
in vec2 direction;

uniform vec3 iResolution;
uniform sampler2D iChannel0;
uniform bool flip;

vec4 blur5(sampler2D image, vec2 uv, vec2 resolution, vec2 direction) {
  vec4 color = vec4(0.0);
  vec2 off1 = vec2(1.3333333333333333) * direction;
  color += texture2D(image, uv) * 0.29411764705882354;
  color += texture2D(image, uv + (off1 / resolution)) * 0.35294117647058826;
  color += texture2D(image, uv - (off1 / resolution)) * 0.35294117647058826;
  return color; 
}

vec4 blur9(sampler2D image, vec2 uv, vec2 resolution, vec2 direction) {
  vec4 color = vec4(0.0);
  vec2 off1 = vec2(1.3846153846) * direction;
  vec2 off2 = vec2(3.2307692308) * direction;
  color += texture2D(image, uv) * 0.2270270270;
  color += texture2D(image, uv + (off1 / resolution)) * 0.3162162162;
  color += texture2D(image, uv - (off1 / resolution)) * 0.3162162162;
  color += texture2D(image, uv + (off2 / resolution)) * 0.0702702703;
  color += texture2D(image, uv - (off2 / resolution)) * 0.0702702703;
  return color;
}

vec4 blur13(sampler2D image, vec2 uv, vec2 resolution, vec2 direction) {
  vec4 color = vec4(0.0);
  vec2 off1 = vec2(1.411764705882353) * direction;
  vec2 off2 = vec2(3.2941176470588234) * direction;
  vec2 off3 = vec2(5.176470588235294) * direction;
  color += texture2D(image, uv) * 0.1964825501511404;
  color += texture2D(image, uv + (off1 / resolution)) * 0.2969069646728344;
  color += texture2D(image, uv - (off1 / resolution)) * 0.2969069646728344;
  color += texture2D(image, uv + (off2 / resolution)) * 0.09447039785044732;
  color += texture2D(image, uv - (off2 / resolution)) * 0.09447039785044732;
  color += texture2D(image, uv + (off3 / resolution)) * 0.010381362401148057;
  color += texture2D(image, uv - (off3 / resolution)) * 0.010381362401148057;
  return color;
}

void main() {
  vec2 uv = vec2(gl_FragCoord.xy / iResolution.xy);
  if (flip) {
    uv.y = 1.0 - uv.y;
  }

  gl_FragColor = blur13(iChannel0, uv, iResolution.xy, direction);
}' withUnixLineEndings
]

{ #category : #code }
FastBlurShaderRecipe >> vertexShader [
    ^'#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 position;
uniform mat4 mvp;
out vec2 TexCoords;

void main() {
	TexCoords = position;
  	gl_Position = mvp * vec4(aPos, 1.0);
}' withUnixLineEndings
]
