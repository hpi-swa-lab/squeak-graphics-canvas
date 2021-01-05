"
1.4.1
"
Class {
	#name : #LOGLTextures,
	#superclass : #LOGLHelloTriangle,
	#instVars : [
		'ebo',
		'texture'
	],
	#category : #'LearnOpenGL-GettingStarted',
	#commentStamp : 'stlu 1/4/2021 04:37'
}

{
	#category : #running,
	#timestamp : 'stlu 1/4/2021 04:53'
}
LOGLTextures >> draw [

	GL
		drawElements: GL_TRIANGLES
		with: 6
		with: GL_UNSIGNED_INT
		with: nil
]

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
	#category : #accessing,
	#timestamp : 'stlu 1/4/2021 04:44'
}
LOGLTextures >> indices [

	^ #(
			0 1 3
			1 2 3
		) asWordArray
]

{
	#category : #running,
	#timestamp : 'stlu 1/4/2021 10:08'
}
LOGLTextures >> setUp [

	| form |
	super setUp.
	
	texture := GL2DTexture create.
	texture bind.
	texture
		wrapS: GL_REPEAT;
		wrapT: GL_REPEAT;
		minificationFilter: GL_LINEAR;
		magnificationFilter: GL_LINEAR.
	form := LOGLImages container.
	GL
		texImage2D: GL_TEXTURE_2D
		with: 0
		with: GL_RGBA
		with: form width
		with: form height
		with: 0
		with: GL_BGRA
		with: GL_UNSIGNED_BYTE
		with: form bits.
	
	texture generateMipmap.
	
	ebo := GLBuffer create.
	ebo target: GL_ELEMENT_ARRAY_BUFFER.
	
	vao boundDuring: [
		ebo bind.
		ebo usage: GL_STATIC_DRAW data: self indices.
	
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
