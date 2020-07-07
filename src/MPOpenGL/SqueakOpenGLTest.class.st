Class {
	#name : #SqueakOpenGLTest,
	#superclass : #CustomOpenGLParentTestCase,
	#instVars : [
		'font',
		'bounds'
	],
	#pools : [
		'GLConstants',
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Test'
}

{ #category : #utility }
SqueakOpenGLTest >> blurFragmentShader [
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

{ #category : #utility }
SqueakOpenGLTest >> blurVertexShader [
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

{ #category : #utility }
SqueakOpenGLTest >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
     FragColor = vec4(texture(image, TexCoords).rgb, 1.0);
}' withUnixLineEndings
]

{ #category : #'before each' }
SqueakOpenGLTest >> setUp [
	self setUpWindow.
	self verifyOglInitializationWorked.
]

{ #category : #'before each' }
SqueakOpenGLTest >> setUpWindow [
	| gl |
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0 @ 0 extent: 1000 asPoint.
	gl := GL4_6.
	
	true
		ifTrue: [ogl := gl newIn: bounds]
		ifFalse: [ogl := gl newInGLFW: bounds]
]

{ #category : #'after each' }
SqueakOpenGLTest >> tearDownWindow [ 
	ogl destroy
]

{ #category : #test }
SqueakOpenGLTest >> test_blurredExample [
	<timeout: 5>
	| frames startTime deltaTime framesPerSec program vbo vao mvp tex |
	frames := 0.
	startTime := Time millisecondClockValue.
	tex := OGLTexture new
				form: (Display copy: bounds).
	program := GLProgram context: ogl shaders: {
					VertexShader context: ogl code: self blurVertexShader.
					FragmentShader context: ogl code: self blurFragmentShader }.
	ogl checkForError.
	vao := GLVertexArrayObject context: ogl.
	vao bind.
	vbo := GLVertexBufferObject context: ogl.
	vbo
		data: {
				-1. -1. 0 . 1 .
				1.  -1. 1 . 1 .
				-1. 1. 0 . 0	.
				1.   1. 1 . 0
			} asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4.
	ogl glDisable: GL_CULL_FACE.
	ogl checkForError.
	[Sensor anyButtonPressed not and: [ogl shouldClose not]]
		whileTrue: ["start counting at second frame si------**nce first frame is
			penalized by the upload of the bitmap font outside of ogl."
			frames = 1
				ifTrue: [startTime := Time millisecondClockValue].
			ogl beginFrame.
			ogl installTexture: tex.
			ogl checkForError.
			"uploads only in first frame"
			"ogl enableTexture: tex."
			ogl checkForError.
			"--- this is the actual scene content ---"
			ogl glDisable: GLDepthTest.
			ogl checkForError.
			ogl
				glClearColor: 0.0
				with: 0.0
				with: 1.0
				with: 1.0.
			ogl checkForError.
			ogl glClear: GLColorBufferBit.
			ogl checkForError.
			program use.
			ogl checkForError.
			vao bind.
			ogl glBindBuffer: GL_ARRAY_BUFFER with: vbo id.
			ogl checkForError.
			program vertexAttrib: 0 value: vbo stride: 4 offset: 0.
			ogl checkForError.
			program vertexAttrib: 1 value: vbo stride: 4 offset: 2.
			ogl checkForError.
			program
				uniform: (ogl glGetUniformLocation: program id with: 'mvp')
				value: (Matrix rotateZBy: "(Float pi / 2) rounded" Time utcMicrosecondClock / 10000000.0).
			program
				uniform: (ogl glGetUniformLocation: program id with: 'image')
				value: 0.
			program
				uniform: (ogl glGetUniformLocation: program id with: 'horizontal')
				value: 1.	
			"program uniform: 0 value: (Matrix identity: 4)."
			ogl checkForError.
			vbo draw: GL_TRIANGLE_STRIP.
			ogl checkForError.
			
			
			"--- here is the 2d overlay setup ---"
			mvp := (Matrix scaleX: 2.0 / bounds width y: -2.0 / bounds height)
						+* (Matrix translateX: -1 y: 1).
			"--- here is the 2d overlay rendering ---"
			deltaTime := Time millisecondsSince: startTime.
			framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
			"@@@@: Fixme. It appears as if #drawString: depends on
			glColor being set.
			Makes no sense but I'm not going to figure this out - probably
			some mishap
			wrt. GLLighting being disabled."
			"ogl glColor3f: 0.0 with: 0.0 with: 0.0.
			ogl drawString: frames printString, ' frames: ', (framesPerSec
			truncateTo: 0.1), ' fps'
			at: 0@font height@0 font: font color: Color black."
			ogl checkForError.
			ogl glDisable: GLBlend.
			"--- end the end frame operations"
			ogl endFrame.
			ogl swapBuffers.
			ogl checkForError.
			frames := frames + 1]
]

{ #category : #test }
SqueakOpenGLTest >> test_example [
	<timeout: 5>
	| frames startTime deltaTime framesPerSec program vbo vao mvp tex |
	frames := 0.
	startTime := Time millisecondClockValue.
	tex := OGLTexture new
				form: (Display copy: bounds).
	program := GLProgram context: ogl shaders: {
					VertexShader context: ogl code: self blurVertexShader.
					FragmentShader context: ogl code: self blurFragmentShader }.
	ogl checkForError.
	vao := GLVertexArrayObject context: ogl.
	vao bind.
	vbo := GLVertexBufferObject context: ogl.
	vbo
		data: {
			-1. -1. 0 . 0 .
			1.  -1. 0 . 1 .
			-1. 1. 1 . 0	.
			1.   1. 1 . 1
		} asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4.
	ogl glDisable: GL_CULL_FACE.
	ogl checkForError.
	[Sensor anyButtonPressed not and: [ogl shouldClose not]]
		whileTrue: ["start counting at second frame si------**nce first frame is
			penalized by the upload of the bitmap font outside of ogl."
			frames = 1
				ifTrue: [startTime := Time millisecondClockValue].
			ogl beginFrame.
			ogl installTexture: tex.
			ogl checkForError.
			"uploads only in first frame"
			"ogl enableTexture: tex."
			ogl checkForError.
			"--- this is the actual scene content ---"
			ogl glDisable: GLDepthTest.
			ogl checkForError.
			ogl
				glClearColor: 0.0
				with: 0.0
				with: 1.0
				with: 1.0.
			ogl checkForError.
			ogl glClear: GLColorBufferBit.
			ogl checkForError.
			program use.
			ogl checkForError.
			vao bind.
			ogl glBindBuffer: GL_ARRAY_BUFFER with: vbo id.
			ogl checkForError.
			program vertexAttrib: 0 value: vbo stride: 4 offset: 0.
			ogl checkForError.
			program vertexAttrib: 1 value: vbo stride: 4 offset: 2.
			ogl checkForError.
			program
				uniform: (ogl glGetUniformLocation: program id with: 'mvp')
				value: (Matrix rotateZBy: "(Float pi / 2) rounded" Time utcMicrosecondClock / 100000.0).
			program
				uniform: (ogl glGetUniformLocation: program id with: 'image')
				value: 0.
			program
				uniform: (ogl glGetUniformLocation: program id with: 'horizontal')
				value: 1.	
			"program uniform: 0 value: (Matrix identity: 4)."
			ogl checkForError.
			vbo draw: GL_TRIANGLE_STRIP.
			ogl checkForError.
			
			
			"--- here is the 2d overlay setup ---"
			mvp := (Matrix scaleX: 2.0 / bounds width y: -2.0 / bounds height)
						+* (Matrix translateX: -1 y: 1).
			"--- here is the 2d overlay rendering ---"
			deltaTime := Time millisecondsSince: startTime.
			framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
			"@@@@: Fixme. It appears as if #drawString: depends on
			glColor being set.
			Makes no sense but I'm not going to figure this out - probably
			some mishap
			wrt. GLLighting being disabled."
			"ogl glColor3f: 0.0 with: 0.0 with: 0.0.
			ogl drawString: frames printString, ' frames: ', (framesPerSec
			truncateTo: 0.1), ' fps'
			at: 0@font height@0 font: font color: Color black."
			ogl checkForError.
			ogl glDisable: GLBlend.
			"--- end the end frame operations"
			ogl endFrame.
			ogl swapBuffers.
			ogl checkForError.
			frames := frames + 1]
]

{ #category : #'before each' }
SqueakOpenGLTest >> verifyOglInitializationWorked [
	ogl ifNil: [^self error: 'Unable to create renderer'].
]

{ #category : #utility }
SqueakOpenGLTest >> vertexShader [
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
