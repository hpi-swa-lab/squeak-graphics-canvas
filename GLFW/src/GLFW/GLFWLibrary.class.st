Class {
	#name : #GLFWLibrary,
	#superclass : #ExternalLibrary,
	#instVars : [
		'callbacks',
		'contexts',
		'api'
	],
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core',
	#commentStamp : ''
}

{
	#category : #'class initialization',
	#timestamp : ''
}
GLFWLibrary class >> compileConstantAccessors [

	GLFWConstants classVarNames do: [:aSymbol |
		| source |
		source := '{1}

	<generated>
	^ {1}' format: { aSymbol asString }.
		self compile: source classified: 'constants']
]

{
	#category : #'instance management',
	#timestamp : ''
}
GLFWLibrary class >> example [
	" self example "

	| window |
	window := GLFWWindow extent: 100 asPoint title: 'My pretty window'.
	window ifNil: [^ self error: 'GLFW Error'].
	
	[window context library makeCurrentDuring: [
		[window shouldClose] whileFalse: [GL newFrameDo: [
			" your GL code here "
			]]]] ensure: [window destroy]
]

{
	#category : #examples,
	#timestamp : ''
}
GLFWLibrary class >> example1 [ "self example1"
	"A minimal GLFW example window. Dismiss by clicking anywhere inside Squeak.
	Do NOT force quit the window (unless you want your Squeak to force quit too)."
	| window |
	window := GLFWWindow
					width: 400
					height: 400
					title: 'GLFW example1'.
	window ifNil: [^ self error: 'GLFW Error'].
	[[Sensor anyButtonPressed] whileFalse]
		ensure: [window destroy]
]

{
	#category : #'class initialization',
	#timestamp : ''
}
GLFWLibrary class >> initialize [

	Smalltalk addToShutDownList: self after: GLContext. "hard dependency on OpenGL"
	Smalltalk addToStartUpList: self.
	self registerNewInstance.
	self startUp
]

{
	#category : #'instance management',
	#timestamp : ''
}
GLFWLibrary class >> initializeInstance [

	Environment current
		at: #GLFW
		ifPresent: [:lib |
			[
				lib
					reset;
					init;
					hintGLAPI;
					hintAnyProfile
			] ifError: [self notify: 'Initialization of GLFW failed']]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLFWLibrary class >> moduleName [

	Smalltalk platformName = 'Win32' ifTrue: [
		^ 'glfw3.dll'].
	Smalltalk platformName = 'Mac OS' ifTrue:[
		^ Smalltalk osVersion asNumber < 1000 
			ifTrue: [self notYetImplemented]
			ifFalse:['glfw3.framework']].
	Smalltalk platformName = 'unix' ifTrue: [
		"default to X11 window system"
		^ Smalltalk osVersion = 'linux-gnu'
			ifTrue: ['libglfw.so']
			ifFalse: ['glfw3']].
	self error: 'Cannot identify platform'
]

{
	#category : #'instance management',
	#timestamp : ''
}
GLFWLibrary class >> registerNewInstance [

	Environment current at: #GLFW put: self new
]

{
	#category : #'system startup',
	#timestamp : ''
}
GLFWLibrary class >> shutDown: quitting [

	quitting ifTrue: [self terminateInstance]
]

{
	#category : #'system startup',
	#timestamp : ''
}
GLFWLibrary class >> startUp: resuming [

	resuming ifTrue: [self initializeInstance]
]

{
	#category : #'instance management',
	#timestamp : ''
}
GLFWLibrary class >> terminateInstance [

	Environment current
		at: #GLFW
		ifPresent: [:lib |
			[lib terminate] ifError: [self notify: 'Termination of GLFW failed']]
]

{
	#category : #'instance management',
	#timestamp : ''
}
GLFWLibrary class >> updateInstance [

	self terminateInstance.
	self registerNewInstance.
	self initializeInstance
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ACCUM_ALPHA_BITS [

	<generated>
	^ ACCUM_ALPHA_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ACCUM_BLUE_BITS [

	<generated>
	^ ACCUM_BLUE_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ACCUM_GREEN_BITS [

	<generated>
	^ ACCUM_GREEN_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ACCUM_RED_BITS [

	<generated>
	^ ACCUM_RED_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ALPHA_BITS [

	<generated>
	^ ALPHA_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE [

	<generated>
	^ ANGLE_PLATFORM_TYPE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_D3D11 [

	<generated>
	^ ANGLE_PLATFORM_TYPE_D3D11
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_D3D9 [

	<generated>
	^ ANGLE_PLATFORM_TYPE_D3D9
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_METAL [

	<generated>
	^ ANGLE_PLATFORM_TYPE_METAL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_NONE [

	<generated>
	^ ANGLE_PLATFORM_TYPE_NONE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_OPENGL [

	<generated>
	^ ANGLE_PLATFORM_TYPE_OPENGL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_OPENGLES [

	<generated>
	^ ANGLE_PLATFORM_TYPE_OPENGLES
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANGLE_PLATFORM_TYPE_VULKAN [

	<generated>
	^ ANGLE_PLATFORM_TYPE_VULKAN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ANY_RELEASE_BEHAVIOR [

	<generated>
	^ ANY_RELEASE_BEHAVIOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> API_UNAVAILABLE [

	<generated>
	^ API_UNAVAILABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ARROW_CURSOR [

	<generated>
	^ ARROW_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> AUTO_ICONIFY [

	<generated>
	^ AUTO_ICONIFY
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> AUX_BUFFERS [

	<generated>
	^ AUX_BUFFERS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> BLUE_BITS [

	<generated>
	^ BLUE_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CENTER_CURSOR [

	<generated>
	^ CENTER_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CLIENT_API [

	<generated>
	^ CLIENT_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> COCOA_CHDIR_RESOURCES [

	<generated>
	^ COCOA_CHDIR_RESOURCES
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> COCOA_FRAME_NAME [

	<generated>
	^ COCOA_FRAME_NAME
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> COCOA_GRAPHICS_SWITCHING [

	<generated>
	^ COCOA_GRAPHICS_SWITCHING
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> COCOA_MENUBAR [

	<generated>
	^ COCOA_MENUBAR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> COCOA_RETINA_FRAMEBUFFER [

	<generated>
	^ COCOA_RETINA_FRAMEBUFFER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONNECTED [

	<generated>
	^ CONNECTED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_CREATION_API [

	<generated>
	^ CONTEXT_CREATION_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_DEBUG [

	<generated>
	^ CONTEXT_DEBUG
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_NO_ERROR [

	<generated>
	^ CONTEXT_NO_ERROR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_RELEASE_BEHAVIOR [

	<generated>
	^ CONTEXT_RELEASE_BEHAVIOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_REVISION [

	<generated>
	^ CONTEXT_REVISION
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_ROBUSTNESS [

	<generated>
	^ CONTEXT_ROBUSTNESS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_VERSION_MAJOR [

	<generated>
	^ CONTEXT_VERSION_MAJOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CONTEXT_VERSION_MINOR [

	<generated>
	^ CONTEXT_VERSION_MINOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CROSSHAIR_CURSOR [

	<generated>
	^ CROSSHAIR_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CURSOR [

	<generated>
	^ CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CURSOR_DISABLED [

	<generated>
	^ CURSOR_DISABLED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CURSOR_HIDDEN [

	<generated>
	^ CURSOR_HIDDEN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CURSOR_NORMAL [

	<generated>
	^ CURSOR_NORMAL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> CURSOR_UNAVAILABLE [

	<generated>
	^ CURSOR_UNAVAILABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> DECORATED [

	<generated>
	^ DECORATED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> DEPTH_BITS [

	<generated>
	^ DEPTH_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> DISCONNECTED [

	<generated>
	^ DISCONNECTED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> DONT_CARE [

	<generated>
	^ DONT_CARE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> DOUBLEBUFFER [

	<generated>
	^ DOUBLEBUFFER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> EGL_CONTEXT_API [

	<generated>
	^ EGL_CONTEXT_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> FEATURE_UNAVAILABLE [

	<generated>
	^ FEATURE_UNAVAILABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> FEATURE_UNIMPLEMENTED [

	<generated>
	^ FEATURE_UNIMPLEMENTED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> FLOATING [

	<generated>
	^ FLOATING
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> FOCUSED [

	<generated>
	^ FOCUSED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> FOCUS_ON_SHOW [

	<generated>
	^ FOCUS_ON_SHOW
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> FORMAT_UNAVAILABLE [

	<generated>
	^ FORMAT_UNAVAILABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_LAST [

	<generated>
	^ GAMEPAD_AXIS_LAST
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_LEFT_TRIGGER [

	<generated>
	^ GAMEPAD_AXIS_LEFT_TRIGGER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_LEFT_X [

	<generated>
	^ GAMEPAD_AXIS_LEFT_X
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_LEFT_Y [

	<generated>
	^ GAMEPAD_AXIS_LEFT_Y
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_RIGHT_TRIGGER [

	<generated>
	^ GAMEPAD_AXIS_RIGHT_TRIGGER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_RIGHT_X [

	<generated>
	^ GAMEPAD_AXIS_RIGHT_X
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_AXIS_RIGHT_Y [

	<generated>
	^ GAMEPAD_AXIS_RIGHT_Y
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_A [

	<generated>
	^ GAMEPAD_BUTTON_A
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_B [

	<generated>
	^ GAMEPAD_BUTTON_B
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_BACK [

	<generated>
	^ GAMEPAD_BUTTON_BACK
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_CIRCLE [

	<generated>
	^ GAMEPAD_BUTTON_CIRCLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_CROSS [

	<generated>
	^ GAMEPAD_BUTTON_CROSS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_DOWN [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_DOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_LEFT [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_LEFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_RIGHT [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_RIGHT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_UP [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_UP
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_GUIDE [

	<generated>
	^ GAMEPAD_BUTTON_GUIDE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_LAST [

	<generated>
	^ GAMEPAD_BUTTON_LAST
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_LEFT_BUMPER [

	<generated>
	^ GAMEPAD_BUTTON_LEFT_BUMPER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_LEFT_THUMB [

	<generated>
	^ GAMEPAD_BUTTON_LEFT_THUMB
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_RIGHT_BUMPER [

	<generated>
	^ GAMEPAD_BUTTON_RIGHT_BUMPER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_RIGHT_THUMB [

	<generated>
	^ GAMEPAD_BUTTON_RIGHT_THUMB
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_SQUARE [

	<generated>
	^ GAMEPAD_BUTTON_SQUARE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_START [

	<generated>
	^ GAMEPAD_BUTTON_START
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_TRIANGLE [

	<generated>
	^ GAMEPAD_BUTTON_TRIANGLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_X [

	<generated>
	^ GAMEPAD_BUTTON_X
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GAMEPAD_BUTTON_Y [

	<generated>
	^ GAMEPAD_BUTTON_Y
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> GREEN_BITS [

	<generated>
	^ GREEN_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAND_CURSOR [

	<generated>
	^ HAND_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_CENTERED [

	<generated>
	^ HAT_CENTERED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_DOWN [

	<generated>
	^ HAT_DOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_LEFT [

	<generated>
	^ HAT_LEFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_LEFT_DOWN [

	<generated>
	^ HAT_LEFT_DOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_LEFT_UP [

	<generated>
	^ HAT_LEFT_UP
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_RIGHT [

	<generated>
	^ HAT_RIGHT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_RIGHT_DOWN [

	<generated>
	^ HAT_RIGHT_DOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_RIGHT_UP [

	<generated>
	^ HAT_RIGHT_UP
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HAT_UP [

	<generated>
	^ HAT_UP
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HOVERED [

	<generated>
	^ HOVERED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> HRESIZE_CURSOR [

	<generated>
	^ HRESIZE_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> IBEAM_CURSOR [

	<generated>
	^ IBEAM_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> ICONIFIED [

	<generated>
	^ ICONIFIED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> INVALID_ENUM [

	<generated>
	^ INVALID_ENUM
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> INVALID_VALUE [

	<generated>
	^ INVALID_VALUE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_1 [

	<generated>
	^ JOYSTICK_1
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_10 [

	<generated>
	^ JOYSTICK_10
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_11 [

	<generated>
	^ JOYSTICK_11
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_12 [

	<generated>
	^ JOYSTICK_12
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_13 [

	<generated>
	^ JOYSTICK_13
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_14 [

	<generated>
	^ JOYSTICK_14
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_15 [

	<generated>
	^ JOYSTICK_15
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_16 [

	<generated>
	^ JOYSTICK_16
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_2 [

	<generated>
	^ JOYSTICK_2
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_3 [

	<generated>
	^ JOYSTICK_3
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_4 [

	<generated>
	^ JOYSTICK_4
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_5 [

	<generated>
	^ JOYSTICK_5
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_6 [

	<generated>
	^ JOYSTICK_6
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_7 [

	<generated>
	^ JOYSTICK_7
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_8 [

	<generated>
	^ JOYSTICK_8
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_9 [

	<generated>
	^ JOYSTICK_9
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_HAT_BUTTONS [

	<generated>
	^ JOYSTICK_HAT_BUTTONS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> JOYSTICK_LAST [

	<generated>
	^ JOYSTICK_LAST
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_0 [

	<generated>
	^ KEY_0
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_1 [

	<generated>
	^ KEY_1
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_2 [

	<generated>
	^ KEY_2
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_3 [

	<generated>
	^ KEY_3
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_4 [

	<generated>
	^ KEY_4
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_5 [

	<generated>
	^ KEY_5
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_6 [

	<generated>
	^ KEY_6
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_7 [

	<generated>
	^ KEY_7
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_8 [

	<generated>
	^ KEY_8
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_9 [

	<generated>
	^ KEY_9
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_A [

	<generated>
	^ KEY_A
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_APOSTROPHE [

	<generated>
	^ KEY_APOSTROPHE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_B [

	<generated>
	^ KEY_B
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_BACKSLASH [

	<generated>
	^ KEY_BACKSLASH
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_BACKSPACE [

	<generated>
	^ KEY_BACKSPACE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_C [

	<generated>
	^ KEY_C
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_CAPS_LOCK [

	<generated>
	^ KEY_CAPS_LOCK
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_COMMA [

	<generated>
	^ KEY_COMMA
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_D [

	<generated>
	^ KEY_D
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_DELETE [

	<generated>
	^ KEY_DELETE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_DOWN [

	<generated>
	^ KEY_DOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_E [

	<generated>
	^ KEY_E
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_END [

	<generated>
	^ KEY_END
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_ENTER [

	<generated>
	^ KEY_ENTER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_EQUAL [

	<generated>
	^ KEY_EQUAL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_ESCAPE [

	<generated>
	^ KEY_ESCAPE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F [

	<generated>
	^ KEY_F
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F1 [

	<generated>
	^ KEY_F1
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F10 [

	<generated>
	^ KEY_F10
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F11 [

	<generated>
	^ KEY_F11
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F12 [

	<generated>
	^ KEY_F12
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F13 [

	<generated>
	^ KEY_F13
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F14 [

	<generated>
	^ KEY_F14
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F15 [

	<generated>
	^ KEY_F15
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F16 [

	<generated>
	^ KEY_F16
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F17 [

	<generated>
	^ KEY_F17
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F18 [

	<generated>
	^ KEY_F18
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F19 [

	<generated>
	^ KEY_F19
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F2 [

	<generated>
	^ KEY_F2
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F20 [

	<generated>
	^ KEY_F20
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F21 [

	<generated>
	^ KEY_F21
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F22 [

	<generated>
	^ KEY_F22
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F23 [

	<generated>
	^ KEY_F23
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F24 [

	<generated>
	^ KEY_F24
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F25 [

	<generated>
	^ KEY_F25
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F3 [

	<generated>
	^ KEY_F3
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F4 [

	<generated>
	^ KEY_F4
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F5 [

	<generated>
	^ KEY_F5
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F6 [

	<generated>
	^ KEY_F6
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F7 [

	<generated>
	^ KEY_F7
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F8 [

	<generated>
	^ KEY_F8
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_F9 [

	<generated>
	^ KEY_F9
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_G [

	<generated>
	^ KEY_G
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_GRAVE_ACCENT [

	<generated>
	^ KEY_GRAVE_ACCENT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_H [

	<generated>
	^ KEY_H
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_HOME [

	<generated>
	^ KEY_HOME
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_I [

	<generated>
	^ KEY_I
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_INSERT [

	<generated>
	^ KEY_INSERT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_J [

	<generated>
	^ KEY_J
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_K [

	<generated>
	^ KEY_K
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_0 [

	<generated>
	^ KEY_KP_0
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_1 [

	<generated>
	^ KEY_KP_1
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_2 [

	<generated>
	^ KEY_KP_2
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_3 [

	<generated>
	^ KEY_KP_3
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_4 [

	<generated>
	^ KEY_KP_4
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_5 [

	<generated>
	^ KEY_KP_5
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_6 [

	<generated>
	^ KEY_KP_6
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_7 [

	<generated>
	^ KEY_KP_7
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_8 [

	<generated>
	^ KEY_KP_8
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_9 [

	<generated>
	^ KEY_KP_9
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_ADD [

	<generated>
	^ KEY_KP_ADD
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_DECIMAL [

	<generated>
	^ KEY_KP_DECIMAL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_DIVIDE [

	<generated>
	^ KEY_KP_DIVIDE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_ENTER [

	<generated>
	^ KEY_KP_ENTER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_EQUAL [

	<generated>
	^ KEY_KP_EQUAL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_MULTIPLY [

	<generated>
	^ KEY_KP_MULTIPLY
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_KP_SUBTRACT [

	<generated>
	^ KEY_KP_SUBTRACT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_L [

	<generated>
	^ KEY_L
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LAST [

	<generated>
	^ KEY_LAST
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LEFT [

	<generated>
	^ KEY_LEFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LEFT_ALT [

	<generated>
	^ KEY_LEFT_ALT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LEFT_BRACKET [

	<generated>
	^ KEY_LEFT_BRACKET
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LEFT_CONTROL [

	<generated>
	^ KEY_LEFT_CONTROL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LEFT_SHIFT [

	<generated>
	^ KEY_LEFT_SHIFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_LEFT_SUPER [

	<generated>
	^ KEY_LEFT_SUPER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_M [

	<generated>
	^ KEY_M
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_MENU [

	<generated>
	^ KEY_MENU
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_MINUS [

	<generated>
	^ KEY_MINUS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_N [

	<generated>
	^ KEY_N
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_NUM_LOCK [

	<generated>
	^ KEY_NUM_LOCK
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_O [

	<generated>
	^ KEY_O
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_P [

	<generated>
	^ KEY_P
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_PAGE_DOWN [

	<generated>
	^ KEY_PAGE_DOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_PAGE_UP [

	<generated>
	^ KEY_PAGE_UP
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_PAUSE [

	<generated>
	^ KEY_PAUSE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_PERIOD [

	<generated>
	^ KEY_PERIOD
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_PRINT_SCREEN [

	<generated>
	^ KEY_PRINT_SCREEN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_Q [

	<generated>
	^ KEY_Q
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_R [

	<generated>
	^ KEY_R
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_RIGHT [

	<generated>
	^ KEY_RIGHT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_RIGHT_ALT [

	<generated>
	^ KEY_RIGHT_ALT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_RIGHT_BRACKET [

	<generated>
	^ KEY_RIGHT_BRACKET
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_RIGHT_CONTROL [

	<generated>
	^ KEY_RIGHT_CONTROL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_RIGHT_SHIFT [

	<generated>
	^ KEY_RIGHT_SHIFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_RIGHT_SUPER [

	<generated>
	^ KEY_RIGHT_SUPER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_S [

	<generated>
	^ KEY_S
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_SCROLL_LOCK [

	<generated>
	^ KEY_SCROLL_LOCK
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_SEMICOLON [

	<generated>
	^ KEY_SEMICOLON
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_SLASH [

	<generated>
	^ KEY_SLASH
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_SPACE [

	<generated>
	^ KEY_SPACE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_T [

	<generated>
	^ KEY_T
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_TAB [

	<generated>
	^ KEY_TAB
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_U [

	<generated>
	^ KEY_U
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_UNKNOWN [

	<generated>
	^ KEY_UNKNOWN
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_UP [

	<generated>
	^ KEY_UP
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_V [

	<generated>
	^ KEY_V
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_W [

	<generated>
	^ KEY_W
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_WORLD_1 [

	<generated>
	^ KEY_WORLD_1
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_WORLD_2 [

	<generated>
	^ KEY_WORLD_2
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_X [

	<generated>
	^ KEY_X
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_Y [

	<generated>
	^ KEY_Y
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> KEY_Z [

	<generated>
	^ KEY_Z
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> LOCK_KEY_MODS [

	<generated>
	^ LOCK_KEY_MODS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> LOSE_CONTEXT_ON_RESET [

	<generated>
	^ LOSE_CONTEXT_ON_RESET
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MAXIMIZED [

	<generated>
	^ MAXIMIZED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOD_ALT [

	<generated>
	^ MOD_ALT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOD_CAPS_LOCK [

	<generated>
	^ MOD_CAPS_LOCK
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOD_CONTROL [

	<generated>
	^ MOD_CONTROL
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOD_NUM_LOCK [

	<generated>
	^ MOD_NUM_LOCK
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOD_SHIFT [

	<generated>
	^ MOD_SHIFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOD_SUPER [

	<generated>
	^ MOD_SUPER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_1 [

	<generated>
	^ MOUSE_BUTTON_1
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_2 [

	<generated>
	^ MOUSE_BUTTON_2
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_3 [

	<generated>
	^ MOUSE_BUTTON_3
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_4 [

	<generated>
	^ MOUSE_BUTTON_4
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_5 [

	<generated>
	^ MOUSE_BUTTON_5
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_6 [

	<generated>
	^ MOUSE_BUTTON_6
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_7 [

	<generated>
	^ MOUSE_BUTTON_7
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_8 [

	<generated>
	^ MOUSE_BUTTON_8
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_LAST [

	<generated>
	^ MOUSE_BUTTON_LAST
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_LEFT [

	<generated>
	^ MOUSE_BUTTON_LEFT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_MIDDLE [

	<generated>
	^ MOUSE_BUTTON_MIDDLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_BUTTON_RIGHT [

	<generated>
	^ MOUSE_BUTTON_RIGHT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> MOUSE_PASSTHROUGH [

	<generated>
	^ MOUSE_PASSTHROUGH
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NATIVE_CONTEXT_API [

	<generated>
	^ NATIVE_CONTEXT_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NOT_ALLOWED_CURSOR [

	<generated>
	^ NOT_ALLOWED_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NOT_INITIALIZED [

	<generated>
	^ NOT_INITIALIZED
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NO_API [

	<generated>
	^ NO_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NO_CURRENT_CONTEXT [

	<generated>
	^ NO_CURRENT_CONTEXT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NO_ERROR [

	<generated>
	^ NO_ERROR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NO_RESET_NOTIFICATION [

	<generated>
	^ NO_RESET_NOTIFICATION
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NO_ROBUSTNESS [

	<generated>
	^ NO_ROBUSTNESS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> NO_WINDOW_CONTEXT [

	<generated>
	^ NO_WINDOW_CONTEXT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_ANY_PROFILE [

	<generated>
	^ OPENGL_ANY_PROFILE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_API [

	<generated>
	^ OPENGL_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_COMPAT_PROFILE [

	<generated>
	^ OPENGL_COMPAT_PROFILE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_CORE_PROFILE [

	<generated>
	^ OPENGL_CORE_PROFILE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_DEBUG_CONTEXT [

	<generated>
	^ OPENGL_DEBUG_CONTEXT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_ES_API [

	<generated>
	^ OPENGL_ES_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_FORWARD_COMPAT [

	<generated>
	^ OPENGL_FORWARD_COMPAT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OPENGL_PROFILE [

	<generated>
	^ OPENGL_PROFILE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OSMESA_CONTEXT_API [

	<generated>
	^ OSMESA_CONTEXT_API
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> OUT_OF_MEMORY [

	<generated>
	^ OUT_OF_MEMORY
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> PLATFORM_ERROR [

	<generated>
	^ PLATFORM_ERROR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> POINTING_HAND_CURSOR [

	<generated>
	^ POINTING_HAND_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> PRESS [

	<generated>
	^ PRESS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RAW_MOUSE_MOTION [

	<generated>
	^ RAW_MOUSE_MOTION
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RED_BITS [

	<generated>
	^ RED_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> REFRESH_RATE [

	<generated>
	^ REFRESH_RATE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RELEASE [

	<generated>
	^ RELEASE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RELEASE_BEHAVIOR_FLUSH [

	<generated>
	^ RELEASE_BEHAVIOR_FLUSH
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RELEASE_BEHAVIOR_NONE [

	<generated>
	^ RELEASE_BEHAVIOR_NONE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> REPEAT [

	<generated>
	^ REPEAT
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RESIZABLE [

	<generated>
	^ RESIZABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RESIZE_ALL_CURSOR [

	<generated>
	^ RESIZE_ALL_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RESIZE_EW_CURSOR [

	<generated>
	^ RESIZE_EW_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RESIZE_NESW_CURSOR [

	<generated>
	^ RESIZE_NESW_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RESIZE_NS_CURSOR [

	<generated>
	^ RESIZE_NS_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> RESIZE_NWSE_CURSOR [

	<generated>
	^ RESIZE_NWSE_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> SAMPLES [

	<generated>
	^ SAMPLES
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> SCALE_TO_MONITOR [

	<generated>
	^ SCALE_TO_MONITOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> SRGB_CAPABLE [

	<generated>
	^ SRGB_CAPABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> STENCIL_BITS [

	<generated>
	^ STENCIL_BITS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> STEREO [

	<generated>
	^ STEREO
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> STICKY_KEYS [

	<generated>
	^ STICKY_KEYS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> STICKY_MOUSE_BUTTONS [

	<generated>
	^ STICKY_MOUSE_BUTTONS
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> TRANSPARENT_FRAMEBUFFER [

	<generated>
	^ TRANSPARENT_FRAMEBUFFER
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> VERSION_UNAVAILABLE [

	<generated>
	^ VERSION_UNAVAILABLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> VISIBLE [

	<generated>
	^ VISIBLE
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> VRESIZE_CURSOR [

	<generated>
	^ VRESIZE_CURSOR
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> WIN32_KEYBOARD_MENU [

	<generated>
	^ WIN32_KEYBOARD_MENU
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> X11_CLASS_NAME [

	<generated>
	^ X11_CLASS_NAME
]

{
	#category : #constants,
	#timestamp : ''
}
GLFWLibrary >> X11_INSTANCE_NAME [

	<generated>
	^ X11_INSTANCE_NAME
]

{
	#category : #accessing,
	#timestamp : ''
}
GLFWLibrary >> api [

	^ api
]

{
	#category : #callbacks,
	#timestamp : ''
}
GLFWLibrary >> callbacksForWindow: aWindow [

	^ callbacks
		at: aWindow
		ifAbsentPut: [Dictionary new]
]

{
	#category : #contexts,
	#timestamp : ''
}
GLFWLibrary >> contextForWindow: aWindow [

	^ GLFWContext window: aWindow
]

{
	#category : #accessing,
	#timestamp : ''
}
GLFWLibrary >> contexts [

	^ contexts
]

{
	#category : #callbacks,
	#timestamp : ''
}
GLFWLibrary >> createCallback: aBlock signature: aString named: aSymbol [

	^ self
		createCallback: aBlock
		signature: aString
		named: aSymbol
		forWindow: self
]

{
	#category : #callbacks,
	#timestamp : ''
}
GLFWLibrary >> createCallback: aBlock signature: aString named: aSymbol forWindow: aWindow [

	^ (self callbacksForWindow: aWindow)
		at: aSymbol
		put: (FFICallback
				signature: aString
				block: aBlock)
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> createWindow: width with: height with: title with: monitor with: share [

	<apicall: GLFWWindow* 'glfwCreateWindow' (int int string GLFWMonitor* GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> defaultWindowHints [

	<apicall: void 'glfwDefaultWindowHints' ()>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> destroyWindow: handle [

	<apicall: void 'glfwDestroyWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> focusWindow: window [

	<apicall: void 'glfwFocusWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getCurrentContext [

	<apicall: GLFWWindow* 'glfwGetCurrentContext' ()>
	^ self externalCallFailed
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> getError [

	^ self getError: nil
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> getError: stringOrNil [

	<apicall: int 'glfwGetError' (string)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getFramebufferSize: window with: width with: height [

	<apicall: void 'glfwGetFramebufferSize' (GLFWWindow* int* int*)>
	^ self externalCallFailed
]

{
	#category : #'api - input',
	#timestamp : ''
}
GLFWLibrary >> getKey: window with: key [

	<apicall: int 'glfwGetKey' (GLFWWindow* int)>
	^ self externalCallFailed
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> getVersion: major with: minor with: rev [

	<apicall: void 'glfwGetVersion' (int* int* int*)>
	^ self externalCallFailed
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> getVersionString [

	<apicall: char* 'glfwGetVersionString' ()>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getWindowContentScale: window with: xscale with: yscale [

	<apicall: void 'glfwGetWindowContentScale' (GLFWWindow* float* float*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getWindowFrameSize: window with: left with: top with: right with: bottom [

	<apicall: void 'glfwGetWindowFrameSize' (GLFWWindow* int* int* int* int*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getWindowMonitor: window [

	<apicall: GLFWMonitor* 'glfwGetWindowMonitor' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getWindowOpacity: window [

	<apicall: float 'glfwGetWindowOpacity' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getWindowPos: window with: xpos with: ypos [

	<apicall: void 'glfwGetWindowPos' (GLFWWindow* int* int*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> getWindowSize: window with: width with: height [

	<apicall: void 'glfwGetWindowSize' (GLFWWindow* int* int*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> hideWindow: window [

	<apicall: void 'glfwHideWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintAnyProfile [

	self windowHint: OPENGL_PROFILE with: OPENGL_ANY_PROFILE
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintCompatibilityProfile [

	self windowHint: OPENGL_PROFILE with: OPENGL_COMPAT_PROFILE
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintCoreProfile [

	self windowHint: OPENGL_PROFILE with: OPENGL_CORE_PROFILE
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintGLAPI [

	self windowHint: CLIENT_API with: OPENGL_API.
	api := #gl
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintGLES1API [

	self windowHint: CLIENT_API with: OPENGL_ES_API.
	api := #gles1
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintGLES2API [

	self windowHint: CLIENT_API with: OPENGL_ES_API.
	api := #gles2
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintMajorVersion: anInteger [

	self windowHint: CONTEXT_VERSION_MAJOR with: anInteger
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintMinorVersion: anInteger [

	self windowHint: CONTEXT_VERSION_MINOR with: anInteger
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> hintNoAPI [

	self windowHint: CLIENT_API with: NO_API.
	api := #none
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> iconifyWindow: window [

	<apicall: void 'glfwIconifyWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> init [

	<apicall: bool 'glfwInit' ()>
	^ self externalCallFailed
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> initHint: hint with: value [

	<apicall: void 'glfwInitHint' (int int)>
	^ self externalCallFailed
]

{
	#category : #initialization,
	#timestamp : ''
}
GLFWLibrary >> initialize [

	super initialize.
	self reset
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> makeContextCurrent: window [

	<apicall: void 'glfwMakeContextCurrent' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> maximizeWindow: window [

	<apicall: void 'glfwMaximizeWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - events',
	#timestamp : ''
}
GLFWLibrary >> pollEvents [

	<apicall: int 'glfwPollEvents' ()>
	^ self externalCallFailed
]

{
	#category : #private,
	#timestamp : ''
}
GLFWLibrary >> privateSetCursorPosCallback: aWindow with: anFFICallback [

	<apicall: void 'glfwSetCursorPosCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{
	#category : #private,
	#timestamp : ''
}
GLFWLibrary >> privateSetErrorCallback: anFFICallback [

	<apicall: void 'glfwSetErrorCallback' (void*)>
	^ self externalCallFailed
]

{
	#category : #private,
	#timestamp : ''
}
GLFWLibrary >> privateSetFramebufferSizeCallback: aWindow with: anFFICallback [

	<apicall: void 'glfwSetFramebufferSizeCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{
	#category : #private,
	#timestamp : ''
}
GLFWLibrary >> privateSetMouseButtonCallback: aWindow with: anFFICallback [

	<apicall: void 'glfwSetMouseButtonCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> requestWindowAttention: window [

	<apicall: void 'glfwRequestWindowAttention' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #initialization,
	#timestamp : ''
}
GLFWLibrary >> reset [

	callbacks := Dictionary new.
	contexts := Dictionary new
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> restoreWindow: window [

	<apicall: void 'glfwRestoreWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - callbacks',
	#timestamp : ''
}
GLFWLibrary >> setCursorPosCallback: aWindow with: aBlock [

	| callback |
	callback := self
					createCallback: aBlock
					signature: '<callback: void (*)(GLFWWindow* double double)>'
					named: #cursorPos
					forWindow: aWindow.
	self
		privateSetCursorPosCallback: aWindow
		with: callback thunk
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> setErrorCallback: aBlock [

	| callback |
	callback := self
					createCallback: aBlock
					signature: '<callback: void (*)(int string)>'
					named: #error.
	self privateSetErrorCallback: callback thunk
]

{
	#category : #'api - callbacks',
	#timestamp : ''
}
GLFWLibrary >> setFramebufferSizeCallback: aWindow with: aBlock [

	| callback |
	callback := self
					createCallback: aBlock
					signature: '<callback: void (*)(GLFWWindow* int int)>'
					named: #framebufferSize
					forWindow: aWindow.
	self
		privateSetFramebufferSizeCallback: aWindow
		with: callback thunk
]

{
	#category : #'api - callbacks',
	#timestamp : ''
}
GLFWLibrary >> setMouseButtonCallback: aWindow with: aBlock [

	| callback |
	callback := self
					createCallback: aBlock
					signature: '<callback: void (*)(GLFWWindow* int int int)>'
					named: #mouseButton
					forWindow: aWindow.
	self
		privateSetMouseButtonCallback: aWindow
		with: callback thunk
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowAspectRatio: window with: numer with: denom [

	<apicall: void 'glfwSetWindowAspectRatio' (GLFWWindow* int int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowIcon: window with: image [

	self notYetImplemented "Creation of GLFWimages not there yet"
	"<apicall: void 'glfwSetWindowIcon' (GLFWWindow* int GLFWImage*)>
	^ self externalCallFailed"
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowMonitor: window with: monitor with: xpos with: ypos with: width with: height with: refreshRate [

	<apicall: void 'glfwSetWindowMonitor' (GLFWWindow* GLFWMonitor* int int int int int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowOpacity: window with: opacity [

	<apicall: void 'glfwSetWindowOpacity' (GLFWWindow* float)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowPos: window with: xpos with: ypos [

	<apicall: void 'glfwSetWindowPos' (GLFWWindow* int int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowShouldClose: window with: value [

	<apicall: void 'glfwSetWindowShouldClose' (GLFWWindow* int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowSize: window with: width with: height [

	<apicall: void 'glfwSetWindowSize' (GLFWWindow* int int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowSizeLimits: window with: minWidth with: minHeight with: maxWidth with: maxHeight [

	<apicall: void 'glfwSetWindowSizeLimits' (GLFWWindow* int int int int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> setWindowTitle: window with: title [

	<apicall: void 'glfwSetWindowTitle' (GLFWWindow* string)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> showWindow: window [

	<apicall: void 'glfwShowWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> swapBuffers: window [

	<apicall: void 'glfwSwapBuffers' (GLFWWindow*)>
	^ self externalCallFailed
]

{
	#category : #'api - initialization',
	#timestamp : ''
}
GLFWLibrary >> swapInterval: aNumber [

	<apicall: void 'glfwSwapInterval' (int)>
	^ self externalCallFailed
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> targetLibrary: aGLLibraryClass [

	self targetLibrary: aGLLibraryClass profile: aGLLibraryClass defaultProfile
]

{
	#category : #helpers,
	#timestamp : ''
}
GLFWLibrary >> targetLibrary: aGLLibraryClass profile: aSymbol [

	self hintMajorVersion: aGLLibraryClass majorVersion.
	self hintMinorVersion: aGLLibraryClass minorVersion.
	
	aGLLibraryClass api caseOf: {
		[#gl] -> [self hintGLAPI].
		[#gles1] -> [self hintGLES1API].
		[#gles2] -> [self hintGLES2API]
	} otherwise: [^ self error: 'API not supported by GLFW'].
	
	"If requesting an OpenGL version below 3.2, 'any profile' must be used."
	(aGLLibraryClass api = #gl and: [aGLLibraryClass versionNumber < 32]) ifTrue: [
		^ self hintAnyProfile].
	
	aSymbol caseOf: {
		[#core] -> [self hintCoreProfile].
		[#compatibility] -> [self hintCompatibilityProfile]
	} otherwise: [self hintAnyProfile].
]

{
	#category : #'api - init',
	#timestamp : ''
}
GLFWLibrary >> terminate [

	<apicall: void 'glfwTerminate' ()>
	^ self externalCallFailed
]

{
	#category : #accessing,
	#timestamp : ''
}
GLFWLibrary >> version [

	| major minor revision |
	major := IntegerArray new: 1.
	minor := IntegerArray new: 1.
	revision := IntegerArray new: 1.
	self getVersion: major with: minor with: revision.
	^ { major first . minor first . revision first }
]

{
	#category : #accessing,
	#timestamp : ''
}
GLFWLibrary >> versionString [

	^ self getVersionString
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> windowHint: hint with: value [

	<apicall: void 'glfwWindowHint' (int int)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> windowHintString: hint with: value [

	<apicall: void 'glfwWindowHintString' (int string)>
	^ self externalCallFailed
]

{
	#category : #'api - windows',
	#timestamp : ''
}
GLFWLibrary >> windowShouldClose: window [

	<apicall: bool 'glfwWindowShouldClose' (GLFWWindow*)>
	^ self externalCallFailed
]
