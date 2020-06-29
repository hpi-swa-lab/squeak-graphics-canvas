Class {
	#name : #CustomOpenGLBloomAndBlurrTest,
	#superclass : #CustomOpenGLParentTestCase,
	#category : 'MPOpenGL-Test'
}

{ #category : #'before each' }
CustomOpenGLBloomAndBlurrTest >> createGLFWWindow [
	| SCR_WIDTH SCR_HEIGHT |	
	"window width and height"
	SCR_WIDTH := 1000.
	SCR_HEIGHT := 1000.
		
	"actually creating the window"
	window := GLFW
				createWindow: SCR_WIDTH
				height: SCR_HEIGHT
				title: 'LearnOpenGL'
				and: nil
				and: nil.
	window
		ifNil: [self error: 'window was nil'].
]

{ #category : #'before each' }
CustomOpenGLBloomAndBlurrTest >> enableGLFWMouseCapture [
	"tell GLFW to capture our mouse"
	GLFW
		setInputMode: window
		with: GLFW CURSOR
		with: GLFW CURSOR_DISABLED
]

{ #category : #'before each' }
CustomOpenGLBloomAndBlurrTest >> loadGlFunctionPointers [
	(Glad loadGLLoader: GLFW getProcAddress) ifNil: [
		self error: 'Could not initialize glad'].
]

{ #category : #'before each' }
CustomOpenGLBloomAndBlurrTest >> setUpWindow [
	GLFW init.
	ogl := GL3_3 newInGLFW: 640@480.
	"self specifyCallbacks."
	"self enableGLFWMouseCapture."
	ogl beginFrame
]

{ #category : #'as yet unclassified' }
CustomOpenGLBloomAndBlurrTest >> simplyOpeningTheWindow [
]

{ #category : #'before each' }
CustomOpenGLBloomAndBlurrTest >> specifyCallbacks [
	| framebuffer_size_callback mouse_callback scroll_callback |	
	"callback inits"
	framebuffer_size_callback := [:win :a :b | ].
	mouse_callback := [:win :a :b | ].
	scroll_callback := [:win :a :b | ].
	
	GLFW makeContextCurrent: window.
	GLFW setFramebufferSizeCallback: window with: framebuffer_size_callback.
	GLFW setCursorPosCallback: window with: mouse_callback.
	GLFW setScrollCallback: window with: scroll_callback.
]

{ #category : #'after each' }
CustomOpenGLBloomAndBlurrTest >> tearDownWindow [
	ogl destroy
]

{ #category : #'testing - window generation' }
CustomOpenGLBloomAndBlurrTest >> testSimplyOpeningTheWindow [
]
