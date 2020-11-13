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
	#timestamp : 'stlu 10/12/2020 14:02'
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
	#timestamp : 'stlu 10/22/2020 16:55'
}
LOGLTemplate >> initialHeight [

	^ 600
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/22/2020 16:54'
}
LOGLTemplate >> initialWidth [

	^ 800
]

{
	#category : #rendering,
	#timestamp : 'stlu 10/12/2020 14:12'
}
LOGLTemplate >> processInput [

	(window getKey: KEY_ESCAPE) = PRESS ifTrue: [
		window shouldClose: true]
]

{
	#category : #rendering,
	#timestamp : 'stlu 10/26/2020 17:44'
}
LOGLTemplate >> render [

	
]

{
	#category : #rendering,
	#timestamp : 'stlu 10/19/2020 16:44'
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
	#timestamp : 'stlu 11/11/2020 13:46'
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
	#timestamp : 'stlu 10/22/2020 16:43'
}
LOGLTemplate >> setUp [

	
]

{
	#category : #testing,
	#timestamp : 'stlu 10/12/2020 14:06'
}
LOGLTemplate >> shouldClose [

	^ window shouldClose
]

{
	#category : #running,
	#timestamp : 'stlu 10/22/2020 16:45'
}
LOGLTemplate >> tearDown [

	
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/19/2020 17:18'
}
LOGLTemplate >> title [

	^ self class name asString
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/9/2020 13:27'
}
LOGLTemplate >> window [

	^ window
]
