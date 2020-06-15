utility
fragmentShader
	^'#version 460 core
out vec4 FragColor;

in vec2 TexCoords;

layout (location = 1) uniform sampler2D image;

void main() {
     FragColor = vec4(texture(image, TexCoords).rgb, 1.0);
}' withUnixLineEndings