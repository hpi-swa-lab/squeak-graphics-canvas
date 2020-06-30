Class {
	#name : #TessControlShader,
	#superclass : #GLShaderSource,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #accessing }
TessControlShader >> kind [

	^ GL_TESS_CONTROL_SHADER
]
