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
	#category : #'LearnOpenGL-Core'
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
LOGLTemplate >> initialHeight [

	^ 600
]

{ #category : #accessing }
LOGLTemplate >> initialWidth [

	^ 800
]

{ #category : #rendering }
LOGLTemplate >> processInput [

	(window getKey: KEY_ESCAPE) = PRESS ifTrue: [
		window shouldClose: true]
]

{ #category : #rendering }
LOGLTemplate >> render [

	
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
				width: self initialWidth
				height: self initialHeight
				title: self title.
	
	window ifNil: [^ self error: 'Failed to create GLFW window'].
	
	(GL3_3 context: window context) makeCurrentDuring: [
		window framebufferSizeCallback: [:w :width :height |
			self extentChanged: width @ height].
	
		self setUp.
		[self renderLoop]
			ensure: [
				self tearDown.
				window destroy]]
]

{ #category : #running }
LOGLTemplate >> setUp [

	
]

{ #category : #testing }
LOGLTemplate >> shouldClose [

	^ window shouldClose
]

{ #category : #running }
LOGLTemplate >> tearDown [

	
]

{ #category : #accessing }
LOGLTemplate >> title [

	^ self class name asString
]

{ #category : #accessing }
LOGLTemplate >> window [

	^ window
]
