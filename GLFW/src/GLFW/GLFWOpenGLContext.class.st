Class {
	#name : #GLFWOpenGLContext,
	#superclass : #GLContext,
	#instVars : [
		'window',
		'libraryClass'
	],
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-OpenGL'
}

{ #category : #'instance creation' }
GLFWOpenGLContext class >> newIn: bounds forLibraryClass: aLibraryClass title: aString [

	^ self new initializeIn: bounds for: aLibraryClass title: aString
]

{ #category : #activation }
GLFWOpenGLContext >> activate [

	window makeCurrent
]

{ #category : #activation }
GLFWOpenGLContext >> deactivate [

	GLFW makeContextCurrent: nil
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> destroy [

	super destroy.
	window ifNotNil: [window destroy]
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> endFrame [

	GLFW pollEvents
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> initializeIn: bounds for: aLibraryClass title: aString [

	libraryClass := aLibraryClass.

	GLFW windowHint: CONTEXT_VERSION_MAJOR with: aLibraryClass majorVersion.
	GLFW windowHint: CONTEXT_VERSION_MINOR with: aLibraryClass minorVersion.
	
	window := GLFWWindow
				width: bounds width
				height: bounds height
				title: aString.
	
	GLFW getError ~= NO_ERROR ifTrue: [
		^ self error: 'GLFW Error'].
	
	self initializeWindowState
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> initializeWindowState [

	| oldContext |
	"we need to switch the active OpenGL context"
	oldContext := GL value ifNotNil: [:lib | lib context].
	oldContext ifNotNil: [oldContext deactivate].
	self activate.
	
	GLFW swapInterval: 0. "disable vsync"
	
	"switch back to the previously active OpenGL context"
	self deactivate.
	oldContext ifNotNil: [oldContext activate]
]

{ #category : #activation }
GLFWOpenGLContext >> library [

	^ libraryClass context: self
]

{ #category : #testing }
GLFWOpenGLContext >> shouldClose [

	^ window shouldClose
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> swapBuffers [

	window swapBuffers
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> useMorphicEventHandling [

	window cursorCallback: [:win :x :y |
		| evt |
		evt := MouseMoveEvent new
				setType: #mouseMove
				startPoint: x @ y
				endPoint: x @ y
				trail: nil
				buttons: 0
				hand: ActiveHand
				stamp: 0.
		ActiveHand handleEvent: evt].
	
	window mouseButtonCallback: [:win :button :down :mods |
		ActiveHand handleEvent: (MouseButtonEvent new
			setType: (down ifTrue: [#mouseDown] ifFalse: [#mouseUp])
			position: ActiveHand position
			which: button
			buttons: button
			hand: ActiveHand
			stamp: 0)].
]

{ #category : #accessing }
GLFWOpenGLContext >> window [

	^ window
]
