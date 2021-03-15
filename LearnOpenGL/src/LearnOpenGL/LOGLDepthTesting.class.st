"
4.1.1
"
Class {
	#name : #LOGLDepthTesting,
	#superclass : #LOGL3DTemplate,
	#instVars : [
		'program',
		'cubeVAO',
		'planeVAO',
		'cubeVBO',
		'planeVBO',
		'cubeTexture',
		'planeTexture'
	],
	#category : #'LearnOpenGL-Advanced',
	#commentStamp : 'stlu 3/13/2021 00:47'
}

{
	#category : #accessing,
	#timestamp : 'stlu 3/13/2021 00:59'
}
LOGLDepthTesting >> cubeVertices [

	^ #(	"positions"		"texture coords"
			-0.5 -0.5 -0.5	0.0 0.0
			0.5 -0.5 -0.5	1.0 0.0
			0.5 0.5 -0.5	1.0 1.0
			0.5 0.5 -0.5	1.0 1.0
			-0.5 0.5 -0.5	0.0 1.0
			-0.5 -0.5 -0.5	0.0 0.0

			-0.5 -0.5 0.5	0.0 0.0
			0.5 -0.5 0.5	1.0 0.0
			0.5 0.5 0.5		1.0 1.0
			0.5 0.5 0.5		1.0 1.0
			-0.5 0.5 0.5	0.0 1.0
			-0.5 -0.5 0.5	0.0 0.0

			-0.5 0.5 0.5	1.0 0.0
			-0.5 0.5 -0.5	1.0 1.0
			-0.5 -0.5 -0.5	0.0 1.0
			-0.5 -0.5 -0.5	0.0 1.0
			-0.5 -0.5 0.5	0.0 0.0
			-0.5 0.5 0.5	1.0 0.0

			0.5 0.5 0.5		1.0 0.0
			0.5 0.5 -0.5	1.0 1.0
			0.5 -0.5 -0.5	0.0 1.0
			0.5 -0.5 -0.5	0.0 1.0
			0.5 -0.5 0.5	0.0 0.0
			0.5 0.5 0.5		1.0 0.0

			-0.5 -0.5 -0.5	0.0 1.0
			0.5 -0.5 -0.5	1.0 1.0
			0.5 -0.5 0.5	1.0 0.0
			0.5 -0.5 0.5	1.0 0.0
			-0.5 -0.5 0.5	0.0 0.0
			-0.5 -0.5 -0.5	0.0 1.0

			-0.5 0.5 -0.5	0.0 1.0
			0.5 0.5 -0.5	1.0 1.0
			0.5 0.5 0.5		1.0 0.0
			0.5 0.5 0.5		1.0 0.0
			-0.5 0.5 0.5	0.0 0.0
			-0.5 0.5 -0.5	0.0 1.0
		) asFloat32Array
]

{
	#category : #shaders,
	#timestamp : 'stlu 3/13/2021 00:57'
}
LOGLDepthTesting >> fragmentShaderSource [

	^ '#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D texture1;

void main()
{    
    FragColor = texture(texture1, TexCoords);
}'
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/13/2021 01:02'
}
LOGLDepthTesting >> planeVertices [

	^ #(	"positions"		"texture coords"
			5.0 -0.5 5.0	2.0 0.0
			-5.0 -0.5 5.0	0.0 0.0
			-5.0 -0.5 -5.0	0.0 2.0

			5.0 -0.5 5.0	2.0 0.0
			-5.0 -0.5 -5.0	0.0 2.0
			5.0 -0.5 -5.0	2.0 2.0
		) asFloat32Array
]

{
	#category : #running,
	#timestamp : 'stlu 3/13/2021 01:58'
}
LOGLDepthTesting >> render [

	GL setClearColor: (Color r: 0.1 g: 0.1 b: 0.1 alpha: 0.1).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	
	program useDuring: [
		program uniforms
			projection: self projectionMatrix;
			view: camera viewMatrix.
		self flag: #todo. "texture binding points"
		GL activeTexture: GL_TEXTURE0.
		cubeVAO boundDuring: [
			cubeTexture bind.
			program uniforms model: (Matrix4x4 withOffset: -1.0 @ 0.0 @ -1.0).
			GL drawArrays: GL_TRIANGLES with: 0 with: 36.
			program uniforms model: (Matrix4x4 withOffset: 2.0 @ 0.0 @ 0.0).
			GL drawArrays: GL_TRIANGLES with: 0 with: 36].
		planeVAO boundDuring: [
			planeTexture bind.
			program uniforms model: Matrix4x4 identity.
			GL drawArrays: GL_TRIANGLES with: 0 with: 6]]
]

{
	#category : #running,
	#timestamp : 'stlu 3/13/2021 01:59'
}
LOGLDepthTesting >> setUp [

	super setUp.

	GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS.

	program := GLProgram
					vertexSource: self vertexShaderSource
					fragmentSource: self fragmentShaderSource.
	
	cubeVBO := GLBuffer create.
	planeVBO := GLBuffer create.
	cubeVAO := GLVertexArray create.
	planeVAO := GLVertexArray create.
	
	self flag: #todo. "needs new vertexarray object"
	cubeVAO boundDuring: [
		cubeVBO boundDuring: [
			cubeVBO usage: GL_STATIC_DRAW data: self cubeVertices.
			program inputs aPos stride: 4*5 offset: 0.
			program inputs aTexCoords stride: 4*5 offset: 4*3]].
	
	planeVAO boundDuring: [
		planeVBO boundDuring: [
			planeVBO usage: GL_STATIC_DRAW data: self planeVertices.
			program inputs aPos stride: 4*5 offset: 0.
			program inputs aTexCoords stride: 4*5 offset: 4*3]].
	
	cubeTexture := GL2DTexture create.
	planeTexture := GL2DTexture create.
	
	cubeTexture boundDuring: [
		cubeTexture
			wrapS: GL_REPEAT;
			wrapT: GL_REPEAT;
			minificationFilter: GL_LINEAR;
			magnificationFilter: GL_LINEAR;
			imageForm: LOGLImages marble flipVertically;
			generateMipmap].
	
	planeTexture boundDuring: [
		planeTexture
			wrapS: GL_REPEAT;
			wrapT: GL_REPEAT;
			minificationFilter: GL_LINEAR;
			magnificationFilter: GL_LINEAR;
			imageForm: LOGLImages metal flipVertically;
			generateMipmap].
	
	program uniforms texture1: 0.
	
	GL checkForError.
]

{
	#category : #shaders,
	#timestamp : 'stlu 3/13/2021 00:57'
}
LOGLDepthTesting >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoords;

out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    TexCoords = aTexCoords;    
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}'
]
