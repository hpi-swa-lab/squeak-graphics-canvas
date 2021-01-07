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
	#timestamp : 'stlu 1/6/2021 14:01'
}
GLFWContext class >> newIn: bounds forLibraryClass: aLibraryClass title: aString [

	self flag: #todo. "Deprecated"
	GLFW targetLibrary: GL3_3.
	^ self window: (GLFWWindow
						extent: bounds extent
						title: aString)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/11/2020 14:22'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLFWContext >> activate [

	window makeCurrent
]

{
	#category : #activation,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLFWContext >> deactivate [

	GLFW makeContextCurrent: nil
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 12/8/2020 17:47'
}
GLFWContext >> destroy [

	super destroy.
	window ifNotNil: [
		GLFW contexts removeKey: window.
		window destroy]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLFWContext >> endFrame [

	GLFW pollEvents
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLFWContext >> shouldClose [

	^ window shouldClose
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLFWContext >> swapBuffers [

	window swapBuffers
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/19/2020 16:50'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLFWContext >> window [

	^ window
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/19/2020 15:54'
}
GLFWContext >> window: aWindow [

	window := aWindow
]
