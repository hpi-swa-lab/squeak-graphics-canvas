shaders
fragmentShader
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
     //FragColor = vec4(TexCoords.xy, 0.0, 0.3);
     FragColor = texture(image, TexCoords);
}' withUnixLineEndings