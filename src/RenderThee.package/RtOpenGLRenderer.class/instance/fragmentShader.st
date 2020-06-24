shaders
fragmentShader
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
     //FragColor = vec4(TexCoords.xy, 0.0, 0.3);
	
	/*if (any(lessThan(TexCoords.xy, vec2(0.01, 0.01))) ||
	    any(greaterThan(TexCoords.xy, vec2(0.99, 0.99))))
		FragColor = vec4(1.0, 0.0, 0.0, 1.0);
	else*/
		FragColor = texture(image, TexCoords);
}' withUnixLineEndings