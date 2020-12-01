Class {
	#name : #GLFWContext,
	#superclass : #GLContext,
	#instVars : [
		'window'
	],
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-OpenGL',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
GLFWContext class >> newIn: bounds forLibraryClass: aLibraryClass title: aString [

	self flag: #todo. "Deprecated"
	GLFW targetLibrary: GL3_3.
	^ self window: (GLFWWindow
						width: bounds width
						height: bounds height
						title: aString)
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLFWContext class >> window: aWindow [

	^ GLFW contexts
		at: aWindow
		ifAbsentPut: [
			self basicNew
				window: aWindow;
				api: GLFW api; "assumes context is created before hinted api changes again"
				initialize;
				yourself]
]

{
	#category : #activation,
	#timestamp : ''
}
GLFWContext >> activate [

	window makeCurrent
]

{
	#category : #activation,
	#timestamp : ''
}
GLFWContext >> deactivate [

	GLFW makeContextCurrent: nil
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLFWContext >> destroy [

	super destroy.
	window ifNotNil: [window destroy]
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLFWContext >> endFrame [

	GLFW pollEvents
]

{
	#category : #testing,
	#timestamp : ''
}
GLFWContext >> shouldClose [

	^ window shouldClose
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLFWContext >> swapBuffers [

	window swapBuffers
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
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

{
	#category : #accessing,
	#timestamp : ''
}
GLFWContext >> window [

	^ window
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLFWContext >> window: aWindow [

	window := aWindow
]
