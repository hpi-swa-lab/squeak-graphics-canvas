"
1.4.1
"
Class {
	#name : #LOGLTextures,
	#superclass : #LOGLHelloTriangleIndexed,
	#instVars : [
		'texture'
	],
	#category : #'LearnOpenGL-GettingStarted',
	#commentStamp : 'stlu 1/4/2021 04:37'
}

{
	#category : #shaders,
	#timestamp : 'stlu 1/4/2021 04:41'
}
LOGLTextures >> fragmentShaderSource [

	^ '#version 330 core
out vec4 FragColor;

in vec2 TexCoord;

uniform sampler2D texture1;

void main() {
	FragColor = texture(texture1, TexCoord);
}'
]

{
	#category : #testing,
	#timestamp : 'stlu 1/7/2021 11:19'
}
LOGLTextures >> isWireframe [

	^ false
]

{
	#category : #rendering,
	#timestamp : 'stlu 1/7/2021 11:29'
}
LOGLTextures >> render [

	GL activeTexture: GL_TEXTURE0.
	texture boundDuring: [
		super render]
]

{
	#category : #running,
	#timestamp : 'stlu 1/7/2021 11:24'
}
LOGLTextures >> setUp [

	super setUp.
	
	texture := GL2DTexture create.
	texture boundDuring: [
		texture
			wrapS: GL_REPEAT;
			wrapT: GL_REPEAT;
			minificationFilter: GL_LINEAR;
			magnificationFilter: GL_LINEAR;
			imageForm: LOGLImages container;
			generateMipmap].
	
	vao boundDuring: [
		program inputs aPos
			stride: 4*5
			offset: 0.
		program inputs aTexCoord
			stride: 4*5
			offset: 4*3].
	
	GL checkForError
]

{
	#category : #shaders,
	#timestamp : 'stlu 1/4/2021 04:42'
}
LOGLTextures >> vertexShaderSource [

	^ '#version 330 core
in vec3 aPos;
in vec2 aTexCoord;

out vec2 TexCoord;

void main() {
	gl_Position = vec4(aPos, 1.0);
	TexCoord = vec2 (aTexCoord.x, aTexCoord.y);
}'
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/4/2021 05:41'
}
LOGLTextures >> vertices [

	^ #(	"positions"		"texture coords"
			0.5 0.5 0.0		1.0 1.0 "top right"
			0.5 -0.5 0.0	1.0 0.0 "bottom right"
			-0.5 -0.5 0.0	0.0 0.0 "bottom left"
			-0.5 0.5 0.0	0.0 1.0 "top left"
		) asFloat32Array
]
