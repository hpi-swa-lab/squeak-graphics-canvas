Class {
	#name : #GLFWContext,
	#superclass : #GLContext,
	#instVars : [
		'window'
	],
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-OpenGL'
}

{ #category : #'instance creation' }
GLFWContext class >> newIn: bounds forLibraryClass: aLibraryClass title: aString [

	self flag: #todo. "Deprecated"
	GLFW targetGLVersion: GL3_3.
	^ (GLFWWindow
		width: bounds width
		height: bounds height
		title: aString) context
]

{ #category : #'instance creation' }
GLFWContext class >> window: aWindow [

	^ self basicNew
		window: aWindow;
		initialize;
		yourself
]

{ #category : #activation }
GLFWContext >> activate [

	window makeCurrent
]

{ #category : #activation }
GLFWContext >> deactivate [

	GLFW makeContextCurrent: nil
]

{ #category : #'initialize-release' }
GLFWContext >> destroy [

	super destroy.
	window ifNotNil: [window destroy]
]

{ #category : #'initialize-release' }
GLFWContext >> endFrame [

	GLFW pollEvents
]

{ #category : #testing }
GLFWContext >> shouldClose [

	^ window shouldClose
]

{ #category : #'initialize-release' }
GLFWContext >> swapBuffers [

	window swapBuffers
]

{ #category : #'initialize-release' }
GLFWContext >> useMorphicEventHandling [

	self flag: #todo. "This is not the right place for this."
	window cursorPosCallback: [:win :x :y |
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
GLFWContext >> window [

	^ window
]

{ #category : #'initialize-release' }
GLFWContext >> window: aWindow [

	window := aWindow
]
