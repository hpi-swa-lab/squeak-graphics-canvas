Class {
	#name : #GLFWLibrary,
	#superclass : #ExternalLibrary,
	#instVars : [
		'callbacks',
		'contexts'
	],
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core'
}

{ #category : #'class initialization' }
GLFWLibrary class >> compileConstantAccessors [

	GLFWConstants classVarNames do: [:aSymbol |
		| source |
		source := '{1}

	<generated>
	^ {1}' format: { aSymbol asString }.
		self compile: source classified: 'constants']
]

{ #category : #examples }
GLFWLibrary class >> example1 [ "self example1"
	"A minimal GLFW example window. Dismiss by clicking anywhere inside Squeak.
	Do NOT force quit the window (unless you want your Squeak to force quit too)."
	| window |
	[
		window := GLFWWindow
					width: 400
					height: 400
					title: 'GLFW example1'.
		GLFW getError ~= NO_ERROR ifTrue: [
			^ self error: 'GLFW Error'].
		[Sensor anyButtonPressed] whileFalse
	] ensure: [
		window ifNotNil: [GLFW destroyWindow: window]]
]

{ #category : #'class initialization' }
GLFWLibrary class >> initialize [

	Smalltalk addToShutDownList: self.
	Smalltalk addToStartUpList: self.
	self registerNewInstance.
	self startUp
]

{ #category : #accessing }
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

{ #category : #'class initialization' }
GLFWLibrary class >> registerNewInstance [

	Environment current at: #GLFW put: self new
]

{ #category : #'system startup' }
GLFWLibrary class >> shutDown [

	Smalltalk
		at: #GLFW
		ifPresent: [:lib |
			[lib terminate] ifError: ["do nothing"]]
]

{ #category : #'system startup' }
GLFWLibrary class >> startUp [

	Smalltalk
		at: #GLFW
		ifPresent: [:lib |
			[lib reset; init] ifError: ["do nothing"]]
]

{ #category : #'class initialization' }
GLFWLibrary class >> updateInstance [

	self shutDown.
	self registerNewInstance.
	self startUp
]

{ #category : #constants }
GLFWLibrary >> ACCUM_ALPHA_BITS [

	<generated>
	^ ACCUM_ALPHA_BITS
]

{ #category : #constants }
GLFWLibrary >> ACCUM_BLUE_BITS [

	<generated>
	^ ACCUM_BLUE_BITS
]

{ #category : #constants }
GLFWLibrary >> ACCUM_GREEN_BITS [

	<generated>
	^ ACCUM_GREEN_BITS
]

{ #category : #constants }
GLFWLibrary >> ACCUM_RED_BITS [

	<generated>
	^ ACCUM_RED_BITS
]

{ #category : #constants }
GLFWLibrary >> ALPHA_BITS [

	<generated>
	^ ALPHA_BITS
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE [

	<generated>
	^ ANGLE_PLATFORM_TYPE
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_D3D11 [

	<generated>
	^ ANGLE_PLATFORM_TYPE_D3D11
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_D3D9 [

	<generated>
	^ ANGLE_PLATFORM_TYPE_D3D9
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_METAL [

	<generated>
	^ ANGLE_PLATFORM_TYPE_METAL
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_NONE [

	<generated>
	^ ANGLE_PLATFORM_TYPE_NONE
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_OPENGL [

	<generated>
	^ ANGLE_PLATFORM_TYPE_OPENGL
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_OPENGLES [

	<generated>
	^ ANGLE_PLATFORM_TYPE_OPENGLES
]

{ #category : #constants }
GLFWLibrary >> ANGLE_PLATFORM_TYPE_VULKAN [

	<generated>
	^ ANGLE_PLATFORM_TYPE_VULKAN
]

{ #category : #constants }
GLFWLibrary >> ANY_RELEASE_BEHAVIOR [

	<generated>
	^ ANY_RELEASE_BEHAVIOR
]

{ #category : #constants }
GLFWLibrary >> API_UNAVAILABLE [

	<generated>
	^ API_UNAVAILABLE
]

{ #category : #constants }
GLFWLibrary >> ARROW_CURSOR [

	<generated>
	^ ARROW_CURSOR
]

{ #category : #constants }
GLFWLibrary >> AUTO_ICONIFY [

	<generated>
	^ AUTO_ICONIFY
]

{ #category : #constants }
GLFWLibrary >> AUX_BUFFERS [

	<generated>
	^ AUX_BUFFERS
]

{ #category : #constants }
GLFWLibrary >> BLUE_BITS [

	<generated>
	^ BLUE_BITS
]

{ #category : #constants }
GLFWLibrary >> CENTER_CURSOR [

	<generated>
	^ CENTER_CURSOR
]

{ #category : #constants }
GLFWLibrary >> CLIENT_API [

	<generated>
	^ CLIENT_API
]

{ #category : #constants }
GLFWLibrary >> COCOA_CHDIR_RESOURCES [

	<generated>
	^ COCOA_CHDIR_RESOURCES
]

{ #category : #constants }
GLFWLibrary >> COCOA_FRAME_NAME [

	<generated>
	^ COCOA_FRAME_NAME
]

{ #category : #constants }
GLFWLibrary >> COCOA_GRAPHICS_SWITCHING [

	<generated>
	^ COCOA_GRAPHICS_SWITCHING
]

{ #category : #constants }
GLFWLibrary >> COCOA_MENUBAR [

	<generated>
	^ COCOA_MENUBAR
]

{ #category : #constants }
GLFWLibrary >> COCOA_RETINA_FRAMEBUFFER [

	<generated>
	^ COCOA_RETINA_FRAMEBUFFER
]

{ #category : #constants }
GLFWLibrary >> CONNECTED [

	<generated>
	^ CONNECTED
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_CREATION_API [

	<generated>
	^ CONTEXT_CREATION_API
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_DEBUG [

	<generated>
	^ CONTEXT_DEBUG
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_NO_ERROR [

	<generated>
	^ CONTEXT_NO_ERROR
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_RELEASE_BEHAVIOR [

	<generated>
	^ CONTEXT_RELEASE_BEHAVIOR
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_REVISION [

	<generated>
	^ CONTEXT_REVISION
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_ROBUSTNESS [

	<generated>
	^ CONTEXT_ROBUSTNESS
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_VERSION_MAJOR [

	<generated>
	^ CONTEXT_VERSION_MAJOR
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_VERSION_MINOR [

	<generated>
	^ CONTEXT_VERSION_MINOR
]

{ #category : #constants }
GLFWLibrary >> CROSSHAIR_CURSOR [

	<generated>
	^ CROSSHAIR_CURSOR
]

{ #category : #constants }
GLFWLibrary >> CURSOR [

	<generated>
	^ CURSOR
]

{ #category : #constants }
GLFWLibrary >> CURSOR_DISABLED [

	<generated>
	^ CURSOR_DISABLED
]

{ #category : #constants }
GLFWLibrary >> CURSOR_HIDDEN [

	<generated>
	^ CURSOR_HIDDEN
]

{ #category : #constants }
GLFWLibrary >> CURSOR_NORMAL [

	<generated>
	^ CURSOR_NORMAL
]

{ #category : #constants }
GLFWLibrary >> CURSOR_UNAVAILABLE [

	<generated>
	^ CURSOR_UNAVAILABLE
]

{ #category : #constants }
GLFWLibrary >> DECORATED [

	<generated>
	^ DECORATED
]

{ #category : #constants }
GLFWLibrary >> DEPTH_BITS [

	<generated>
	^ DEPTH_BITS
]

{ #category : #constants }
GLFWLibrary >> DISCONNECTED [

	<generated>
	^ DISCONNECTED
]

{ #category : #constants }
GLFWLibrary >> DONT_CARE [

	<generated>
	^ DONT_CARE
]

{ #category : #constants }
GLFWLibrary >> DOUBLEBUFFER [

	<generated>
	^ DOUBLEBUFFER
]

{ #category : #constants }
GLFWLibrary >> EGL_CONTEXT_API [

	<generated>
	^ EGL_CONTEXT_API
]

{ #category : #constants }
GLFWLibrary >> FEATURE_UNAVAILABLE [

	<generated>
	^ FEATURE_UNAVAILABLE
]

{ #category : #constants }
GLFWLibrary >> FEATURE_UNIMPLEMENTED [

	<generated>
	^ FEATURE_UNIMPLEMENTED
]

{ #category : #constants }
GLFWLibrary >> FLOATING [

	<generated>
	^ FLOATING
]

{ #category : #constants }
GLFWLibrary >> FOCUSED [

	<generated>
	^ FOCUSED
]

{ #category : #constants }
GLFWLibrary >> FOCUS_ON_SHOW [

	<generated>
	^ FOCUS_ON_SHOW
]

{ #category : #constants }
GLFWLibrary >> FORMAT_UNAVAILABLE [

	<generated>
	^ FORMAT_UNAVAILABLE
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_LAST [

	<generated>
	^ GAMEPAD_AXIS_LAST
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_LEFT_TRIGGER [

	<generated>
	^ GAMEPAD_AXIS_LEFT_TRIGGER
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_LEFT_X [

	<generated>
	^ GAMEPAD_AXIS_LEFT_X
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_LEFT_Y [

	<generated>
	^ GAMEPAD_AXIS_LEFT_Y
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_RIGHT_TRIGGER [

	<generated>
	^ GAMEPAD_AXIS_RIGHT_TRIGGER
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_RIGHT_X [

	<generated>
	^ GAMEPAD_AXIS_RIGHT_X
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_AXIS_RIGHT_Y [

	<generated>
	^ GAMEPAD_AXIS_RIGHT_Y
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_A [

	<generated>
	^ GAMEPAD_BUTTON_A
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_B [

	<generated>
	^ GAMEPAD_BUTTON_B
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_BACK [

	<generated>
	^ GAMEPAD_BUTTON_BACK
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_CIRCLE [

	<generated>
	^ GAMEPAD_BUTTON_CIRCLE
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_CROSS [

	<generated>
	^ GAMEPAD_BUTTON_CROSS
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_DOWN [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_DOWN
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_LEFT [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_LEFT
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_RIGHT [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_RIGHT
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_DPAD_UP [

	<generated>
	^ GAMEPAD_BUTTON_DPAD_UP
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_GUIDE [

	<generated>
	^ GAMEPAD_BUTTON_GUIDE
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_LAST [

	<generated>
	^ GAMEPAD_BUTTON_LAST
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_LEFT_BUMPER [

	<generated>
	^ GAMEPAD_BUTTON_LEFT_BUMPER
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_LEFT_THUMB [

	<generated>
	^ GAMEPAD_BUTTON_LEFT_THUMB
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_RIGHT_BUMPER [

	<generated>
	^ GAMEPAD_BUTTON_RIGHT_BUMPER
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_RIGHT_THUMB [

	<generated>
	^ GAMEPAD_BUTTON_RIGHT_THUMB
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_SQUARE [

	<generated>
	^ GAMEPAD_BUTTON_SQUARE
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_START [

	<generated>
	^ GAMEPAD_BUTTON_START
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_TRIANGLE [

	<generated>
	^ GAMEPAD_BUTTON_TRIANGLE
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_X [

	<generated>
	^ GAMEPAD_BUTTON_X
]

{ #category : #constants }
GLFWLibrary >> GAMEPAD_BUTTON_Y [

	<generated>
	^ GAMEPAD_BUTTON_Y
]

{ #category : #constants }
GLFWLibrary >> GREEN_BITS [

	<generated>
	^ GREEN_BITS
]

{ #category : #constants }
GLFWLibrary >> HAND_CURSOR [

	<generated>
	^ HAND_CURSOR
]

{ #category : #constants }
GLFWLibrary >> HAT_CENTERED [

	<generated>
	^ HAT_CENTERED
]

{ #category : #constants }
GLFWLibrary >> HAT_DOWN [

	<generated>
	^ HAT_DOWN
]

{ #category : #constants }
GLFWLibrary >> HAT_LEFT [

	<generated>
	^ HAT_LEFT
]

{ #category : #constants }
GLFWLibrary >> HAT_LEFT_DOWN [

	<generated>
	^ HAT_LEFT_DOWN
]

{ #category : #constants }
GLFWLibrary >> HAT_LEFT_UP [

	<generated>
	^ HAT_LEFT_UP
]

{ #category : #constants }
GLFWLibrary >> HAT_RIGHT [

	<generated>
	^ HAT_RIGHT
]

{ #category : #constants }
GLFWLibrary >> HAT_RIGHT_DOWN [

	<generated>
	^ HAT_RIGHT_DOWN
]

{ #category : #constants }
GLFWLibrary >> HAT_RIGHT_UP [

	<generated>
	^ HAT_RIGHT_UP
]

{ #category : #constants }
GLFWLibrary >> HAT_UP [

	<generated>
	^ HAT_UP
]

{ #category : #constants }
GLFWLibrary >> HOVERED [

	<generated>
	^ HOVERED
]

{ #category : #constants }
GLFWLibrary >> HRESIZE_CURSOR [

	<generated>
	^ HRESIZE_CURSOR
]

{ #category : #constants }
GLFWLibrary >> IBEAM_CURSOR [

	<generated>
	^ IBEAM_CURSOR
]

{ #category : #constants }
GLFWLibrary >> ICONIFIED [

	<generated>
	^ ICONIFIED
]

{ #category : #constants }
GLFWLibrary >> INVALID_ENUM [

	<generated>
	^ INVALID_ENUM
]

{ #category : #constants }
GLFWLibrary >> INVALID_VALUE [

	<generated>
	^ INVALID_VALUE
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_1 [

	<generated>
	^ JOYSTICK_1
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_10 [

	<generated>
	^ JOYSTICK_10
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_11 [

	<generated>
	^ JOYSTICK_11
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_12 [

	<generated>
	^ JOYSTICK_12
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_13 [

	<generated>
	^ JOYSTICK_13
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_14 [

	<generated>
	^ JOYSTICK_14
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_15 [

	<generated>
	^ JOYSTICK_15
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_16 [

	<generated>
	^ JOYSTICK_16
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_2 [

	<generated>
	^ JOYSTICK_2
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_3 [

	<generated>
	^ JOYSTICK_3
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_4 [

	<generated>
	^ JOYSTICK_4
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_5 [

	<generated>
	^ JOYSTICK_5
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_6 [

	<generated>
	^ JOYSTICK_6
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_7 [

	<generated>
	^ JOYSTICK_7
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_8 [

	<generated>
	^ JOYSTICK_8
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_9 [

	<generated>
	^ JOYSTICK_9
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_HAT_BUTTONS [

	<generated>
	^ JOYSTICK_HAT_BUTTONS
]

{ #category : #constants }
GLFWLibrary >> JOYSTICK_LAST [

	<generated>
	^ JOYSTICK_LAST
]

{ #category : #constants }
GLFWLibrary >> KEY_0 [

	<generated>
	^ KEY_0
]

{ #category : #constants }
GLFWLibrary >> KEY_1 [

	<generated>
	^ KEY_1
]

{ #category : #constants }
GLFWLibrary >> KEY_2 [

	<generated>
	^ KEY_2
]

{ #category : #constants }
GLFWLibrary >> KEY_3 [

	<generated>
	^ KEY_3
]

{ #category : #constants }
GLFWLibrary >> KEY_4 [

	<generated>
	^ KEY_4
]

{ #category : #constants }
GLFWLibrary >> KEY_5 [

	<generated>
	^ KEY_5
]

{ #category : #constants }
GLFWLibrary >> KEY_6 [

	<generated>
	^ KEY_6
]

{ #category : #constants }
GLFWLibrary >> KEY_7 [

	<generated>
	^ KEY_7
]

{ #category : #constants }
GLFWLibrary >> KEY_8 [

	<generated>
	^ KEY_8
]

{ #category : #constants }
GLFWLibrary >> KEY_9 [

	<generated>
	^ KEY_9
]

{ #category : #constants }
GLFWLibrary >> KEY_A [

	<generated>
	^ KEY_A
]

{ #category : #constants }
GLFWLibrary >> KEY_APOSTROPHE [

	<generated>
	^ KEY_APOSTROPHE
]

{ #category : #constants }
GLFWLibrary >> KEY_B [

	<generated>
	^ KEY_B
]

{ #category : #constants }
GLFWLibrary >> KEY_BACKSLASH [

	<generated>
	^ KEY_BACKSLASH
]

{ #category : #constants }
GLFWLibrary >> KEY_BACKSPACE [

	<generated>
	^ KEY_BACKSPACE
]

{ #category : #constants }
GLFWLibrary >> KEY_C [

	<generated>
	^ KEY_C
]

{ #category : #constants }
GLFWLibrary >> KEY_CAPS_LOCK [

	<generated>
	^ KEY_CAPS_LOCK
]

{ #category : #constants }
GLFWLibrary >> KEY_COMMA [

	<generated>
	^ KEY_COMMA
]

{ #category : #constants }
GLFWLibrary >> KEY_D [

	<generated>
	^ KEY_D
]

{ #category : #constants }
GLFWLibrary >> KEY_DELETE [

	<generated>
	^ KEY_DELETE
]

{ #category : #constants }
GLFWLibrary >> KEY_DOWN [

	<generated>
	^ KEY_DOWN
]

{ #category : #constants }
GLFWLibrary >> KEY_E [

	<generated>
	^ KEY_E
]

{ #category : #constants }
GLFWLibrary >> KEY_END [

	<generated>
	^ KEY_END
]

{ #category : #constants }
GLFWLibrary >> KEY_ENTER [

	<generated>
	^ KEY_ENTER
]

{ #category : #constants }
GLFWLibrary >> KEY_EQUAL [

	<generated>
	^ KEY_EQUAL
]

{ #category : #constants }
GLFWLibrary >> KEY_ESCAPE [

	<generated>
	^ KEY_ESCAPE
]

{ #category : #constants }
GLFWLibrary >> KEY_F [

	<generated>
	^ KEY_F
]

{ #category : #constants }
GLFWLibrary >> KEY_F1 [

	<generated>
	^ KEY_F1
]

{ #category : #constants }
GLFWLibrary >> KEY_F10 [

	<generated>
	^ KEY_F10
]

{ #category : #constants }
GLFWLibrary >> KEY_F11 [

	<generated>
	^ KEY_F11
]

{ #category : #constants }
GLFWLibrary >> KEY_F12 [

	<generated>
	^ KEY_F12
]

{ #category : #constants }
GLFWLibrary >> KEY_F13 [

	<generated>
	^ KEY_F13
]

{ #category : #constants }
GLFWLibrary >> KEY_F14 [

	<generated>
	^ KEY_F14
]

{ #category : #constants }
GLFWLibrary >> KEY_F15 [

	<generated>
	^ KEY_F15
]

{ #category : #constants }
GLFWLibrary >> KEY_F16 [

	<generated>
	^ KEY_F16
]

{ #category : #constants }
GLFWLibrary >> KEY_F17 [

	<generated>
	^ KEY_F17
]

{ #category : #constants }
GLFWLibrary >> KEY_F18 [

	<generated>
	^ KEY_F18
]

{ #category : #constants }
GLFWLibrary >> KEY_F19 [

	<generated>
	^ KEY_F19
]

{ #category : #constants }
GLFWLibrary >> KEY_F2 [

	<generated>
	^ KEY_F2
]

{ #category : #constants }
GLFWLibrary >> KEY_F20 [

	<generated>
	^ KEY_F20
]

{ #category : #constants }
GLFWLibrary >> KEY_F21 [

	<generated>
	^ KEY_F21
]

{ #category : #constants }
GLFWLibrary >> KEY_F22 [

	<generated>
	^ KEY_F22
]

{ #category : #constants }
GLFWLibrary >> KEY_F23 [

	<generated>
	^ KEY_F23
]

{ #category : #constants }
GLFWLibrary >> KEY_F24 [

	<generated>
	^ KEY_F24
]

{ #category : #constants }
GLFWLibrary >> KEY_F25 [

	<generated>
	^ KEY_F25
]

{ #category : #constants }
GLFWLibrary >> KEY_F3 [

	<generated>
	^ KEY_F3
]

{ #category : #constants }
GLFWLibrary >> KEY_F4 [

	<generated>
	^ KEY_F4
]

{ #category : #constants }
GLFWLibrary >> KEY_F5 [

	<generated>
	^ KEY_F5
]

{ #category : #constants }
GLFWLibrary >> KEY_F6 [

	<generated>
	^ KEY_F6
]

{ #category : #constants }
GLFWLibrary >> KEY_F7 [

	<generated>
	^ KEY_F7
]

{ #category : #constants }
GLFWLibrary >> KEY_F8 [

	<generated>
	^ KEY_F8
]

{ #category : #constants }
GLFWLibrary >> KEY_F9 [

	<generated>
	^ KEY_F9
]

{ #category : #constants }
GLFWLibrary >> KEY_G [

	<generated>
	^ KEY_G
]

{ #category : #constants }
GLFWLibrary >> KEY_GRAVE_ACCENT [

	<generated>
	^ KEY_GRAVE_ACCENT
]

{ #category : #constants }
GLFWLibrary >> KEY_H [

	<generated>
	^ KEY_H
]

{ #category : #constants }
GLFWLibrary >> KEY_HOME [

	<generated>
	^ KEY_HOME
]

{ #category : #constants }
GLFWLibrary >> KEY_I [

	<generated>
	^ KEY_I
]

{ #category : #constants }
GLFWLibrary >> KEY_INSERT [

	<generated>
	^ KEY_INSERT
]

{ #category : #constants }
GLFWLibrary >> KEY_J [

	<generated>
	^ KEY_J
]

{ #category : #constants }
GLFWLibrary >> KEY_K [

	<generated>
	^ KEY_K
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_0 [

	<generated>
	^ KEY_KP_0
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_1 [

	<generated>
	^ KEY_KP_1
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_2 [

	<generated>
	^ KEY_KP_2
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_3 [

	<generated>
	^ KEY_KP_3
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_4 [

	<generated>
	^ KEY_KP_4
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_5 [

	<generated>
	^ KEY_KP_5
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_6 [

	<generated>
	^ KEY_KP_6
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_7 [

	<generated>
	^ KEY_KP_7
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_8 [

	<generated>
	^ KEY_KP_8
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_9 [

	<generated>
	^ KEY_KP_9
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_ADD [

	<generated>
	^ KEY_KP_ADD
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_DECIMAL [

	<generated>
	^ KEY_KP_DECIMAL
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_DIVIDE [

	<generated>
	^ KEY_KP_DIVIDE
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_ENTER [

	<generated>
	^ KEY_KP_ENTER
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_EQUAL [

	<generated>
	^ KEY_KP_EQUAL
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_MULTIPLY [

	<generated>
	^ KEY_KP_MULTIPLY
]

{ #category : #constants }
GLFWLibrary >> KEY_KP_SUBTRACT [

	<generated>
	^ KEY_KP_SUBTRACT
]

{ #category : #constants }
GLFWLibrary >> KEY_L [

	<generated>
	^ KEY_L
]

{ #category : #constants }
GLFWLibrary >> KEY_LAST [

	<generated>
	^ KEY_LAST
]

{ #category : #constants }
GLFWLibrary >> KEY_LEFT [

	<generated>
	^ KEY_LEFT
]

{ #category : #constants }
GLFWLibrary >> KEY_LEFT_ALT [

	<generated>
	^ KEY_LEFT_ALT
]

{ #category : #constants }
GLFWLibrary >> KEY_LEFT_BRACKET [

	<generated>
	^ KEY_LEFT_BRACKET
]

{ #category : #constants }
GLFWLibrary >> KEY_LEFT_CONTROL [

	<generated>
	^ KEY_LEFT_CONTROL
]

{ #category : #constants }
GLFWLibrary >> KEY_LEFT_SHIFT [

	<generated>
	^ KEY_LEFT_SHIFT
]

{ #category : #constants }
GLFWLibrary >> KEY_LEFT_SUPER [

	<generated>
	^ KEY_LEFT_SUPER
]

{ #category : #constants }
GLFWLibrary >> KEY_M [

	<generated>
	^ KEY_M
]

{ #category : #constants }
GLFWLibrary >> KEY_MENU [

	<generated>
	^ KEY_MENU
]

{ #category : #constants }
GLFWLibrary >> KEY_MINUS [

	<generated>
	^ KEY_MINUS
]

{ #category : #constants }
GLFWLibrary >> KEY_N [

	<generated>
	^ KEY_N
]

{ #category : #constants }
GLFWLibrary >> KEY_NUM_LOCK [

	<generated>
	^ KEY_NUM_LOCK
]

{ #category : #constants }
GLFWLibrary >> KEY_O [

	<generated>
	^ KEY_O
]

{ #category : #constants }
GLFWLibrary >> KEY_P [

	<generated>
	^ KEY_P
]

{ #category : #constants }
GLFWLibrary >> KEY_PAGE_DOWN [

	<generated>
	^ KEY_PAGE_DOWN
]

{ #category : #constants }
GLFWLibrary >> KEY_PAGE_UP [

	<generated>
	^ KEY_PAGE_UP
]

{ #category : #constants }
GLFWLibrary >> KEY_PAUSE [

	<generated>
	^ KEY_PAUSE
]

{ #category : #constants }
GLFWLibrary >> KEY_PERIOD [

	<generated>
	^ KEY_PERIOD
]

{ #category : #constants }
GLFWLibrary >> KEY_PRINT_SCREEN [

	<generated>
	^ KEY_PRINT_SCREEN
]

{ #category : #constants }
GLFWLibrary >> KEY_Q [

	<generated>
	^ KEY_Q
]

{ #category : #constants }
GLFWLibrary >> KEY_R [

	<generated>
	^ KEY_R
]

{ #category : #constants }
GLFWLibrary >> KEY_RIGHT [

	<generated>
	^ KEY_RIGHT
]

{ #category : #constants }
GLFWLibrary >> KEY_RIGHT_ALT [

	<generated>
	^ KEY_RIGHT_ALT
]

{ #category : #constants }
GLFWLibrary >> KEY_RIGHT_BRACKET [

	<generated>
	^ KEY_RIGHT_BRACKET
]

{ #category : #constants }
GLFWLibrary >> KEY_RIGHT_CONTROL [

	<generated>
	^ KEY_RIGHT_CONTROL
]

{ #category : #constants }
GLFWLibrary >> KEY_RIGHT_SHIFT [

	<generated>
	^ KEY_RIGHT_SHIFT
]

{ #category : #constants }
GLFWLibrary >> KEY_RIGHT_SUPER [

	<generated>
	^ KEY_RIGHT_SUPER
]

{ #category : #constants }
GLFWLibrary >> KEY_S [

	<generated>
	^ KEY_S
]

{ #category : #constants }
GLFWLibrary >> KEY_SCROLL_LOCK [

	<generated>
	^ KEY_SCROLL_LOCK
]

{ #category : #constants }
GLFWLibrary >> KEY_SEMICOLON [

	<generated>
	^ KEY_SEMICOLON
]

{ #category : #constants }
GLFWLibrary >> KEY_SLASH [

	<generated>
	^ KEY_SLASH
]

{ #category : #constants }
GLFWLibrary >> KEY_SPACE [

	<generated>
	^ KEY_SPACE
]

{ #category : #constants }
GLFWLibrary >> KEY_T [

	<generated>
	^ KEY_T
]

{ #category : #constants }
GLFWLibrary >> KEY_TAB [

	<generated>
	^ KEY_TAB
]

{ #category : #constants }
GLFWLibrary >> KEY_U [

	<generated>
	^ KEY_U
]

{ #category : #constants }
GLFWLibrary >> KEY_UNKNOWN [

	<generated>
	^ KEY_UNKNOWN
]

{ #category : #constants }
GLFWLibrary >> KEY_UP [

	<generated>
	^ KEY_UP
]

{ #category : #constants }
GLFWLibrary >> KEY_V [

	<generated>
	^ KEY_V
]

{ #category : #constants }
GLFWLibrary >> KEY_W [

	<generated>
	^ KEY_W
]

{ #category : #constants }
GLFWLibrary >> KEY_WORLD_1 [

	<generated>
	^ KEY_WORLD_1
]

{ #category : #constants }
GLFWLibrary >> KEY_WORLD_2 [

	<generated>
	^ KEY_WORLD_2
]

{ #category : #constants }
GLFWLibrary >> KEY_X [

	<generated>
	^ KEY_X
]

{ #category : #constants }
GLFWLibrary >> KEY_Y [

	<generated>
	^ KEY_Y
]

{ #category : #constants }
GLFWLibrary >> KEY_Z [

	<generated>
	^ KEY_Z
]

{ #category : #constants }
GLFWLibrary >> LOCK_KEY_MODS [

	<generated>
	^ LOCK_KEY_MODS
]

{ #category : #constants }
GLFWLibrary >> LOSE_CONTEXT_ON_RESET [

	<generated>
	^ LOSE_CONTEXT_ON_RESET
]

{ #category : #constants }
GLFWLibrary >> MAXIMIZED [

	<generated>
	^ MAXIMIZED
]

{ #category : #constants }
GLFWLibrary >> MOD_ALT [

	<generated>
	^ MOD_ALT
]

{ #category : #constants }
GLFWLibrary >> MOD_CAPS_LOCK [

	<generated>
	^ MOD_CAPS_LOCK
]

{ #category : #constants }
GLFWLibrary >> MOD_CONTROL [

	<generated>
	^ MOD_CONTROL
]

{ #category : #constants }
GLFWLibrary >> MOD_NUM_LOCK [

	<generated>
	^ MOD_NUM_LOCK
]

{ #category : #constants }
GLFWLibrary >> MOD_SHIFT [

	<generated>
	^ MOD_SHIFT
]

{ #category : #constants }
GLFWLibrary >> MOD_SUPER [

	<generated>
	^ MOD_SUPER
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_1 [

	<generated>
	^ MOUSE_BUTTON_1
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_2 [

	<generated>
	^ MOUSE_BUTTON_2
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_3 [

	<generated>
	^ MOUSE_BUTTON_3
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_4 [

	<generated>
	^ MOUSE_BUTTON_4
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_5 [

	<generated>
	^ MOUSE_BUTTON_5
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_6 [

	<generated>
	^ MOUSE_BUTTON_6
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_7 [

	<generated>
	^ MOUSE_BUTTON_7
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_8 [

	<generated>
	^ MOUSE_BUTTON_8
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_LAST [

	<generated>
	^ MOUSE_BUTTON_LAST
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_LEFT [

	<generated>
	^ MOUSE_BUTTON_LEFT
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_MIDDLE [

	<generated>
	^ MOUSE_BUTTON_MIDDLE
]

{ #category : #constants }
GLFWLibrary >> MOUSE_BUTTON_RIGHT [

	<generated>
	^ MOUSE_BUTTON_RIGHT
]

{ #category : #constants }
GLFWLibrary >> MOUSE_PASSTHROUGH [

	<generated>
	^ MOUSE_PASSTHROUGH
]

{ #category : #constants }
GLFWLibrary >> NATIVE_CONTEXT_API [

	<generated>
	^ NATIVE_CONTEXT_API
]

{ #category : #constants }
GLFWLibrary >> NOT_ALLOWED_CURSOR [

	<generated>
	^ NOT_ALLOWED_CURSOR
]

{ #category : #constants }
GLFWLibrary >> NOT_INITIALIZED [

	<generated>
	^ NOT_INITIALIZED
]

{ #category : #constants }
GLFWLibrary >> NO_API [

	<generated>
	^ NO_API
]

{ #category : #constants }
GLFWLibrary >> NO_CURRENT_CONTEXT [

	<generated>
	^ NO_CURRENT_CONTEXT
]

{ #category : #constants }
GLFWLibrary >> NO_ERROR [

	<generated>
	^ NO_ERROR
]

{ #category : #constants }
GLFWLibrary >> NO_RESET_NOTIFICATION [

	<generated>
	^ NO_RESET_NOTIFICATION
]

{ #category : #constants }
GLFWLibrary >> NO_ROBUSTNESS [

	<generated>
	^ NO_ROBUSTNESS
]

{ #category : #constants }
GLFWLibrary >> NO_WINDOW_CONTEXT [

	<generated>
	^ NO_WINDOW_CONTEXT
]

{ #category : #constants }
GLFWLibrary >> OPENGL_ANY_PROFILE [

	<generated>
	^ OPENGL_ANY_PROFILE
]

{ #category : #constants }
GLFWLibrary >> OPENGL_API [

	<generated>
	^ OPENGL_API
]

{ #category : #constants }
GLFWLibrary >> OPENGL_COMPAT_PROFILE [

	<generated>
	^ OPENGL_COMPAT_PROFILE
]

{ #category : #constants }
GLFWLibrary >> OPENGL_CORE_PROFILE [

	<generated>
	^ OPENGL_CORE_PROFILE
]

{ #category : #constants }
GLFWLibrary >> OPENGL_DEBUG_CONTEXT [

	<generated>
	^ OPENGL_DEBUG_CONTEXT
]

{ #category : #constants }
GLFWLibrary >> OPENGL_ES_API [

	<generated>
	^ OPENGL_ES_API
]

{ #category : #constants }
GLFWLibrary >> OPENGL_FORWARD_COMPAT [

	<generated>
	^ OPENGL_FORWARD_COMPAT
]

{ #category : #constants }
GLFWLibrary >> OPENGL_PROFILE [

	<generated>
	^ OPENGL_PROFILE
]

{ #category : #constants }
GLFWLibrary >> OSMESA_CONTEXT_API [

	<generated>
	^ OSMESA_CONTEXT_API
]

{ #category : #constants }
GLFWLibrary >> OUT_OF_MEMORY [

	<generated>
	^ OUT_OF_MEMORY
]

{ #category : #constants }
GLFWLibrary >> PLATFORM_ERROR [

	<generated>
	^ PLATFORM_ERROR
]

{ #category : #constants }
GLFWLibrary >> POINTING_HAND_CURSOR [

	<generated>
	^ POINTING_HAND_CURSOR
]

{ #category : #constants }
GLFWLibrary >> PRESS [

	<generated>
	^ PRESS
]

{ #category : #constants }
GLFWLibrary >> RAW_MOUSE_MOTION [

	<generated>
	^ RAW_MOUSE_MOTION
]

{ #category : #constants }
GLFWLibrary >> RED_BITS [

	<generated>
	^ RED_BITS
]

{ #category : #constants }
GLFWLibrary >> REFRESH_RATE [

	<generated>
	^ REFRESH_RATE
]

{ #category : #constants }
GLFWLibrary >> RELEASE [

	<generated>
	^ RELEASE
]

{ #category : #constants }
GLFWLibrary >> RELEASE_BEHAVIOR_FLUSH [

	<generated>
	^ RELEASE_BEHAVIOR_FLUSH
]

{ #category : #constants }
GLFWLibrary >> RELEASE_BEHAVIOR_NONE [

	<generated>
	^ RELEASE_BEHAVIOR_NONE
]

{ #category : #constants }
GLFWLibrary >> REPEAT [

	<generated>
	^ REPEAT
]

{ #category : #constants }
GLFWLibrary >> RESIZABLE [

	<generated>
	^ RESIZABLE
]

{ #category : #constants }
GLFWLibrary >> RESIZE_ALL_CURSOR [

	<generated>
	^ RESIZE_ALL_CURSOR
]

{ #category : #constants }
GLFWLibrary >> RESIZE_EW_CURSOR [

	<generated>
	^ RESIZE_EW_CURSOR
]

{ #category : #constants }
GLFWLibrary >> RESIZE_NESW_CURSOR [

	<generated>
	^ RESIZE_NESW_CURSOR
]

{ #category : #constants }
GLFWLibrary >> RESIZE_NS_CURSOR [

	<generated>
	^ RESIZE_NS_CURSOR
]

{ #category : #constants }
GLFWLibrary >> RESIZE_NWSE_CURSOR [

	<generated>
	^ RESIZE_NWSE_CURSOR
]

{ #category : #constants }
GLFWLibrary >> SAMPLES [

	<generated>
	^ SAMPLES
]

{ #category : #constants }
GLFWLibrary >> SCALE_TO_MONITOR [

	<generated>
	^ SCALE_TO_MONITOR
]

{ #category : #constants }
GLFWLibrary >> SRGB_CAPABLE [

	<generated>
	^ SRGB_CAPABLE
]

{ #category : #constants }
GLFWLibrary >> STENCIL_BITS [

	<generated>
	^ STENCIL_BITS
]

{ #category : #constants }
GLFWLibrary >> STEREO [

	<generated>
	^ STEREO
]

{ #category : #constants }
GLFWLibrary >> STICKY_KEYS [

	<generated>
	^ STICKY_KEYS
]

{ #category : #constants }
GLFWLibrary >> STICKY_MOUSE_BUTTONS [

	<generated>
	^ STICKY_MOUSE_BUTTONS
]

{ #category : #constants }
GLFWLibrary >> TRANSPARENT_FRAMEBUFFER [

	<generated>
	^ TRANSPARENT_FRAMEBUFFER
]

{ #category : #constants }
GLFWLibrary >> VERSION_UNAVAILABLE [

	<generated>
	^ VERSION_UNAVAILABLE
]

{ #category : #constants }
GLFWLibrary >> VISIBLE [

	<generated>
	^ VISIBLE
]

{ #category : #constants }
GLFWLibrary >> VRESIZE_CURSOR [

	<generated>
	^ VRESIZE_CURSOR
]

{ #category : #constants }
GLFWLibrary >> WIN32_KEYBOARD_MENU [

	<generated>
	^ WIN32_KEYBOARD_MENU
]

{ #category : #constants }
GLFWLibrary >> X11_CLASS_NAME [

	<generated>
	^ X11_CLASS_NAME
]

{ #category : #constants }
GLFWLibrary >> X11_INSTANCE_NAME [

	<generated>
	^ X11_INSTANCE_NAME
]

{ #category : #callbacks }
GLFWLibrary >> callbacksForWindow: aWindow [

	^ callbacks
		at: aWindow
		ifAbsentPut: [Dictionary new]
]

{ #category : #contexts }
GLFWLibrary >> contextForWindow: aWindow [

	^ contexts
		at: aWindow
		ifAbsentPut: [GLFWContext window: aWindow]
]

{ #category : #callbacks }
GLFWLibrary >> createCallback: aBlock signature: aString named: aSymbol [

	^ self
		createCallback: aBlock
		signature: aString
		named: aSymbol
		forWindow: self
]

{ #category : #callbacks }
GLFWLibrary >> createCallback: aBlock signature: aString named: aSymbol forWindow: aWindow [

	^ (self callbacksForWindow: aWindow)
		at: aSymbol
		put: (FFICallback
				signature: aString
				block: aBlock)
]

{ #category : #'api - windows' }
GLFWLibrary >> createWindow: width with: height with: title with: monitor with: share [

	<apicall: GLFWWindow* 'glfwCreateWindow' (int int string GLFWMonitor* GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> defaultWindowHints [

	<apicall: void 'glfwDefaultWindowHints' ()>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> destroyWindow: handle [

	<apicall: void 'glfwDestroyWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> getCurrentContext [

	<apicall: GLFWWindow* 'glfwGetCurrentContext' ()>
	^ self externalCallFailed
]

{ #category : #helpers }
GLFWLibrary >> getError [

	^ self getError: nil
]

{ #category : #'api - error handling' }
GLFWLibrary >> getError: stringOrNil [

	<apicall: int 'glfwGetError' (string)>
	^ self externalCallFailed
]

{ #category : #'api - input' }
GLFWLibrary >> getKey: window with: key [

	<apicall: int 'glfwGetKey' (GLFWWindow* int)>
	^ self externalCallFailed
]

{ #category : #'api - accessing' }
GLFWLibrary >> getVersion: major with: minor with: rev [

	<apicall: void 'glfwGetVersion' (int* int* int*)>
	^ self externalCallFailed
]

{ #category : #'api - accessing' }
GLFWLibrary >> getVersionString [

	<apicall: char* 'glfwGetVersionString' ()>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> init [

	<apicall: bool 'glfwInit' ()>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> initHint: hint with: value [

	<apicall: void 'glfwInitHint' (int int)>
	^ self externalCallFailed
]

{ #category : #initialization }
GLFWLibrary >> initialize [

	super initialize.
	self reset
]

{ #category : #'api - windows' }
GLFWLibrary >> makeContextCurrent: window [

	<apicall: void 'glfwMakeContextCurrent' (GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - events' }
GLFWLibrary >> pollEvents [

	<apicall: int 'glfwPollEvents' ()>
	^ self externalCallFailed
]

{ #category : #private }
GLFWLibrary >> privateSetCursorPosCallback: aWindow with: anFFICallback [

	<apicall: void 'glfwSetCursorPosCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{ #category : #private }
GLFWLibrary >> privateSetErrorCallback: anFFICallback [

	<apicall: void 'glfwSetErrorCallback' (void*)>
	^ self externalCallFailed
]

{ #category : #private }
GLFWLibrary >> privateSetFramebufferSizeCallback: aWindow with: anFFICallback [

	<apicall: void 'glfwSetFramebufferSizeCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{ #category : #private }
GLFWLibrary >> privateSetMouseButtonCallback: aWindow with: anFFICallback [

	<apicall: void 'glfwSetMouseButtonCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{ #category : #initialization }
GLFWLibrary >> reset [

	callbacks := Dictionary new.
	contexts := Dictionary new
]

{ #category : #'api - callbacks' }
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

{ #category : #'api - callbacks' }
GLFWLibrary >> setErrorCallback: aBlock [

	| callback |
	callback := self
					createCallback: aBlock
					signature: '<callback: void (*)(int string)>'
					named: #error.
	self privateSetErrorCallback: callback thunk
]

{ #category : #'api - callbacks' }
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

{ #category : #'api - callbacks' }
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

{ #category : #'api - windows' }
GLFWLibrary >> setWindowShouldClose: window with: value [

	<apicall: void 'glfwSetWindowShouldClose' (GLFWWindow* int)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> setWindowTitle: window with: title [

	<apicall: void 'glfwSetWindowTitle' (GLFWWindow* string)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> swapBuffers: window [

	<apicall: void 'glfwSwapBuffers' (GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> swapInterval: aNumber [

	<apicall: void 'glfwSwapInterval' (int)>
	^ self externalCallFailed
]

{ #category : #helpers }
GLFWLibrary >> targetGLVersion: aGLVersionClass [

	self targetGLVersion: aGLVersionClass compatibility: false
]

{ #category : #helpers }
GLFWLibrary >> targetGLVersion: aGLVersionClass compatibility: aBoolean [

	self windowHint: CONTEXT_VERSION_MAJOR with: aGLVersionClass majorVersion.
	self windowHint: CONTEXT_VERSION_MINOR with: aGLVersionClass minorVersion.
	
	self
		windowHint: OPENGL_PROFILE
		with: (aBoolean ifTrue: [OPENGL_COMPAT_PROFILE] ifFalse: [OPENGL_CORE_PROFILE])
]

{ #category : #'api - initialization' }
GLFWLibrary >> terminate [

	<apicall: void 'glfwTerminate' ()>
	^ self externalCallFailed
]

{ #category : #accessing }
GLFWLibrary >> version [

	| major minor revision |
	major := IntegerArray new: 1.
	minor := IntegerArray new: 1.
	revision := IntegerArray new: 1.
	self getVersion: major with: minor with: revision.
	^ { major first . minor first . revision first }
]

{ #category : #accessing }
GLFWLibrary >> versionString [

	^ self getVersionString
]

{ #category : #'api - windows' }
GLFWLibrary >> windowHint: hint with: value [

	<apicall: void 'glfwWindowHint' (int int)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> windowHintString: hint with: value [

	<apicall: void 'glfwWindowHintString' (int string)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> windowShouldClose: window [

	<apicall: bool 'glfwWindowShouldClose' (GLFWWindow*)>
	^ self externalCallFailed
]
