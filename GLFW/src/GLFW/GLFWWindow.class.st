Class {
	#name : #GLFWWindow,
	#superclass : #ExternalStructure,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core'
}

{ #category : #accessing }
GLFWWindow class >> current [

	^ self window: GLFW getCurrentContext
]

{ #category : #'instance creation' }
GLFWWindow class >> width: width height: height title: aString [

	^ self width: width height: height title: aString monitor: nil share: nil
]

{ #category : #'instance creation' }
GLFWWindow class >> width: width height: height title: aString monitor: monitor share: window [

	^ self window: (GLFW
					createWindow: width
					with: height
					with: aString
					with: monitor
					with: window)
]

{ #category : #private }
GLFWWindow class >> window: aWindow [

	^ aWindow isNull
		ifTrue: [nil]
		ifFalse: [aWindow]
]

{ #category : #comparing }
GLFWWindow >> = otherWindow [

	^ handle = otherWindow
]

{ #category : #accessing }
GLFWWindow >> context [

	^ GLFW contextForWindow: self
]

{ #category : #callbacks }
GLFWWindow >> cursorPosCallback: aBlock [

	^ GLFW setCursorPosCallback: self with: aBlock
]

{ #category : #'initialize-release' }
GLFWWindow >> destroy [

	^ GLFW destroyWindow: self
]

{ #category : #callbacks }
GLFWWindow >> framebufferSizeCallback: aBlock [

	^ GLFW setFramebufferSizeCallback: self with: aBlock
]

{ #category : #input }
GLFWWindow >> getKey: key [

	^ GLFW getKey: self with: key
]

{ #category : #comparing }
GLFWWindow >> hash [

	^ handle hash
]

{ #category : #'initialize-release' }
GLFWWindow >> makeCurrent [

	^ GLFW makeContextCurrent: self
]

{ #category : #callbacks }
GLFWWindow >> mouseButtonCallback: aBlock [

	^ GLFW setMouseButtonCallback: self with: aBlock
]

{ #category : #testing }
GLFWWindow >> shouldClose [

	^ GLFW windowShouldClose: self
]

{ #category : #accessing }
GLFWWindow >> shouldClose: aBoolean [

	^ GLFW setWindowShouldClose: self with: aBoolean
]

{ #category : #rendering }
GLFWWindow >> swapBuffers [

	^ GLFW swapBuffers: self
]

{ #category : #accessing }
GLFWWindow >> title: aString [

	^ GLFW setWindowTitle: self with: aString
]
