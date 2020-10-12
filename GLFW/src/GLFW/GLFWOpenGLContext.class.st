Class {
	#name : #GLFWOpenGLContext,
	#superclass : #GLContext,
	#instVars : [
		'window',
		'callbacks',
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

	GLFW makeContextCurrent: window
]

{ #category : #callbacks }
GLFWOpenGLContext >> cursorCallback: aBlock [

	GLFW
		setCursorPosCallback: window
		with: (callbacks
			at: #cursorPos
			put: (FFICallback
				signature: '<callback: void (*)(void* double double)>'
				block: [:win :x :y | aBlock value: x value: y])) thunk
]

{ #category : #activation }
GLFWOpenGLContext >> deactivate [

	GLFW makeContextCurrent: nil
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> destroy [

	super destroy.
	window ifNotNil: [ GLFW destroyWindow: window ].
	window := nil
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> endFrame [

	GLFW pollEvents
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> initializeCallbacks [

	self cursorCallback: [:x :y |
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
	
	self mouseButtonCallback: [:button :down :mods |
		ActiveHand handleEvent: (MouseButtonEvent new
			setType: (down ifTrue: [#mouseDown] ifFalse: [#mouseUp])
			position: ActiveHand position
			which: button
			buttons: button
			hand: ActiveHand
			stamp: 0)].
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> initializeIn: bounds for: aLibraryClass title: aString [

	libraryClass := aLibraryClass.

	GLFW windowHint: CONTEXT_VERSION_MAJOR with: aLibraryClass majorVersion.
	GLFW windowHint: CONTEXT_VERSION_MINOR with: aLibraryClass minorVersion.
	
	callbacks := Dictionary new.
	
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
	self initializeCallbacks.
	
	"switch back to the previously active OpenGL context"
	self deactivate.
	oldContext ifNotNil: [oldContext activate]
]

{ #category : #activation }
GLFWOpenGLContext >> library [

	^ libraryClass context: self
]

{ #category : #callbacks }
GLFWOpenGLContext >> mouseButtonCallback: aBlock [

	GLFW
		setMouseButtonCallback: window
		with: (callbacks
			at: #mouseButton
			put: (FFICallback
				signature: '<callback: void (*)(void* long long long)>'
				block: [:win :button :action :mods |
					aBlock value: (1 bitShift: button - 1) value: action = 1 value: mods])) thunk
]

{ #category : #testing }
GLFWOpenGLContext >> shouldClose [

	^ (GLFW windowShouldClose: window) ~= 0
]

{ #category : #'initialize-release' }
GLFWOpenGLContext >> swapBuffers [

	GLFW swapBuffers: window.
	^ true
]
