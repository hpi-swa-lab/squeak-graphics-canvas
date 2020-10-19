Class {
	#name : #LOGLTemplate,
	#superclass : #Object,
	#instVars : [
		'window',
		'gl'
	],
	#pools : [
		'GLConstants',
		'GLFWConstants'
	],
	#category : #LearnOpenGL
}

{ #category : #'instance creation' }
LOGLTemplate class >> run [

	^ self new
		run;
		yourself
]

{ #category : #callbacks }
LOGLTemplate >> extentChanged: newExtent [
	"glfw: whenever the window size changed (by OS or user resize) this callback function executes"
	gl makeCurrentDuring: [
		gl viewport: (0@0 extent: newExtent)]
]

{ #category : #accessing }
LOGLTemplate >> height [

	^ 600
]

{ #category : #rendering }
LOGLTemplate >> processInput [

	(window getKey: KEY_ESCAPE) = PRESS ifTrue: [
		window shouldClose: true]
]

{ #category : #rendering }
LOGLTemplate >> render [

	gl makeCurrentDuring: [
		gl clearColor: Color white.
		gl glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #rendering }
LOGLTemplate >> renderLoop [

	[self shouldClose] whileFalse: [
		self processInput.
		self render.
		window swapBuffers.
		GLFW pollEvents]
]

{ #category : #initialization }
LOGLTemplate >> run [

	"GLFW init."
	GLFW targetGLVersion: GL3_3 compatibility: false.

	window := GLFWWindow
				width: self width
				height: self height
				title: self title.
	
	window ifNil: [^ self error: 'Failed to create GLFW window'].
	
	gl := GL3_3 context: window context.
	
	window framebufferSizeCallback: [:w :width :height |
		self extentChanged: width @ height].
	
	[self renderLoop]
		ensure: [window destroy]
]

{ #category : #testing }
LOGLTemplate >> shouldClose [

	^ window shouldClose
]

{ #category : #accessing }
LOGLTemplate >> title [

	^ 'LearnOpenGL'
]

{ #category : #accessing }
LOGLTemplate >> width [

	^ 800
]

{ #category : #accessing }
LOGLTemplate >> window [

	^ window
]
