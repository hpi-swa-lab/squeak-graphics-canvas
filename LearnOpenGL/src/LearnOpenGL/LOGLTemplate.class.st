Class {
	#name : #LOGLTemplate,
	#superclass : #Object,
	#instVars : [
		'window'
	],
	#pools : [
		'GLConstants',
		'GLFWConstants'
	],
	#category : #'LearnOpenGL-Core',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
LOGLTemplate class >> run [

	^ self new
		run;
		yourself
]

{
	#category : #callbacks,
	#timestamp : ''
}
LOGLTemplate >> extentChanged: newExtent [
	"glfw: whenever the window size changed (by OS or user resize) this callback function executes"
	window context library makeCurrentDuring: [
		GL setViewport: (0@0 extent: newExtent)]
]

{
	#category : #accessing,
	#timestamp : ''
}
LOGLTemplate >> initialHeight [

	^ 600
]

{
	#category : #accessing,
	#timestamp : ''
}
LOGLTemplate >> initialWidth [

	^ 800
]

{
	#category : #rendering,
	#timestamp : ''
}
LOGLTemplate >> processInput [

	(window getKey: KEY_ESCAPE) = PRESS ifTrue: [
		window shouldClose: true]
]

{
	#category : #rendering,
	#timestamp : ''
}
LOGLTemplate >> render [

	
]

{
	#category : #rendering,
	#timestamp : ''
}
LOGLTemplate >> renderLoop [

	[self shouldClose] whileFalse: [
		self processInput.
		self render.
		window swapBuffers.
		GLFW pollEvents]
]

{
	#category : #initialization,
	#timestamp : ''
}
LOGLTemplate >> run [

	"GLFW init."
	GLFW targetLibrary: GL3_3 profile: #core.

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

{
	#category : #running,
	#timestamp : ''
}
LOGLTemplate >> setUp [

	
]

{
	#category : #testing,
	#timestamp : ''
}
LOGLTemplate >> shouldClose [

	^ window shouldClose
]

{
	#category : #running,
	#timestamp : ''
}
LOGLTemplate >> tearDown [

	
]

{
	#category : #accessing,
	#timestamp : ''
}
LOGLTemplate >> title [

	^ self class name asString
]

{
	#category : #accessing,
	#timestamp : ''
}
LOGLTemplate >> window [

	^ window
]
