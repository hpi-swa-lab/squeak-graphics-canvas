Class {
	#name : #GLFWContext,
	#superclass : #GLContext,
	#instVars : [
		'window',
		'callbacks'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'instance creation' }
GLFWContext class >> newIn: bounds for: gl [
	^ GLFWContext new initializeIn: bounds for: gl
]

{ #category : #activation }
GLFWContext >> activate [
	GLFW makeContextCurrent: window
]

{ #category : #'initialize-release' }
GLFWContext >> cursorCallback: aBlock [

	GLFW 
		setCursorPosCallback: window
		with: (callbacks
			at: #cursorPos
			put: (FFICallback
				signature: '<callback: void (*)(void* double double)>'
				block: [:win :x :y | aBlock value: x value: y])) thunk
]

{ #category : #activation }
GLFWContext >> deactivate [
	GLFW makeContextCurrent: nil
]

{ #category : #'initialize-release' }
GLFWContext >> destroy [
	GLFW destroyWindow: window
]

{ #category : #'initialize-release' }
GLFWContext >> endFrame [
	GLFW pollEvents
]

{ #category : #'initialize-release' }
GLFWContext >> initializeIn: bounds for: gl [
	GLFW windowHint: GLFW CONTEXT_VERSION_MAJOR value: gl majorVersion.
	GLFW windowHint: GLFW CONTEXT_VERSION_MINOR value: gl minorVersion.
	
	callbacks := Dictionary new.
	
	window := GLFW createWindowWidth: bounds width height: bounds height title: 'GLFW Window' monitor: nil share: nil.
	self makeCurrentDuring: [GLFW swapInterval: 1].
	
	"GLFW setCursorPosCallback: myHandle with: (Callback signature: #(void (*)(const void *, double, double)) block: [:win :x :y | Transcript showln: {'move'. x. y}]) thunk.
	GLFW setMouseButtonCallback: myHandle with: (Callback signature: #(void (*)(const void *, int, int, int)) block: [:win :x :y :z | Transcript showln: {'click'. x. y. z}]) thunk."
	
	^window ifNotNil: [self]

]

{ #category : #activation }
GLFWContext >> makeCurrentDuring: aBlock [
	| oldContext |
	oldContext := GLFW getCurrentContext.
	[ GLFW makeContextCurrent: window.
		GL value: self during: aBlock ] ensure: [ GLFW makeContextCurrent: oldContext ]
]

{ #category : #'initialize-release' }
GLFWContext >> mouseButtonCallback: aBlock [

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
GLFWContext >> shouldClose [
	^ (GLFW windowShouldClose: window) ~= 0
]

{ #category : #'initialize-release' }
GLFWContext >> swapBuffers [
	GLFW swapBuffers: window.
	^ true
]
