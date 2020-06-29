Class {
	#name : #BlurShaderRecipe,
	#superclass : #GLShaderRecipe,
	#category : 'MPOpenGL-Shaders'
}

{ #category : #code }
BlurShaderRecipe >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

uniform bool horizontal;
uniform float weight[6] = float[] (1.0, 0.2270270270, 0.1945945946, 0.1216216216, 0.0540540541, 0.0162162162);

void main()
{             
     vec2 tex_offset = 1.0 / textureSize(image, 0); // gets size of single texel
     vec3 result = vec3(0.0); // texture(image, TexCoords).rgb * weight[0];
	float sum = 0;
         for(int i = -5; i <= 5; ++i)
         {
		for(int j = -5; j <= 5; ++j)
		{
			float z = weight[abs(i)] * weight[abs(j)];
			sum += z;
			result += texture(image, TexCoords + tex_offset * vec2(i, j)).rgb * z;
		}
         }
     FragColor = vec4(result / sum, 1.0);
}' withUnixLineEndings
]

{ #category : #code }
BlurShaderRecipe >> vertexShader [
    ^'#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform mat4 mvp;
out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = mvp * vec4(aPos, 1.0);
}' withUnixLineEndings
]
