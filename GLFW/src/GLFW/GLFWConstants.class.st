Class {
	#name : #GLFWConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ACCUM_ALPHA_BITS',
		'ACCUM_BLUE_BITS',
		'ACCUM_GREEN_BITS',
		'ACCUM_RED_BITS',
		'ALPHA_BITS',
		'API_UNAVAILABLE',
		'ARROW_CURSOR',
		'AUTO_ICONIFY',
		'AUX_BUFFERS',
		'BLUE_BITS',
		'CENTER_CURSOR',
		'CLIENT_API',
		'COCOA_FRAME_NAME',
		'COCOA_GRAPHICS_SWITCHING',
		'COCOA_RETINA_FRAMEBUFFER',
		'CONTEXT_CREATION_API',
		'CONTEXT_NO_ERROR',
		'CONTEXT_RELEASE_BEHAVIOR',
		'CONTEXT_REVISION',
		'CONTEXT_ROBUSTNESS',
		'CONTEXT_VERSION_MAJOR',
		'CONTEXT_VERSION_MINOR',
		'CROSSHAIR_CURSOR',
		'CURSOR',
		'CURSOR_DISABLED',
		'CURSOR_HIDDEN',
		'CURSOR_NORMAL',
		'DECORATED',
		'DEPTH_BITS',
		'DOUBLEBUFFER',
		'FALSE',
		'FLOATING',
		'FOCUSED',
		'FOCUS_ON_SHOW',
		'FORMAT_UNAVAILABLE',
		'GREEN_BITS',
		'HAND_CURSOR',
		'HOVERED',
		'HRESIZE_CURSOR',
		'IBEAM_CURSOR',
		'ICONIFIED',
		'INVALID_ENUM',
		'INVALID_VALUE',
		'KEY_0',
		'KEY_1',
		'KEY_2',
		'KEY_3',
		'KEY_4',
		'KEY_5',
		'KEY_6',
		'KEY_7',
		'KEY_8',
		'KEY_9',
		'KEY_A',
		'KEY_APOSTROPHE',
		'KEY_B',
		'KEY_BACKSLASH',
		'KEY_BACKSPACE',
		'KEY_C',
		'KEY_CAPS_LOCK',
		'KEY_COMMA',
		'KEY_D',
		'KEY_DELETE',
		'KEY_DOWN',
		'KEY_E',
		'KEY_END',
		'KEY_ENTER',
		'KEY_EQUAL',
		'KEY_ESCAPE',
		'KEY_F',
		'KEY_F1',
		'KEY_F10',
		'KEY_F11',
		'KEY_F12',
		'KEY_F13',
		'KEY_F14',
		'KEY_F15',
		'KEY_F16',
		'KEY_F17',
		'KEY_F18',
		'KEY_F19',
		'KEY_F2',
		'KEY_F20',
		'KEY_F21',
		'KEY_F22',
		'KEY_F23',
		'KEY_F24',
		'KEY_F25',
		'KEY_F3',
		'KEY_F4',
		'KEY_F5',
		'KEY_F6',
		'KEY_F7',
		'KEY_F8',
		'KEY_F9',
		'KEY_G',
		'KEY_GRAVE_ACCENT',
		'KEY_H',
		'KEY_HOME',
		'KEY_I',
		'KEY_INSERT',
		'KEY_J',
		'KEY_K',
		'KEY_KP_0',
		'KEY_KP_1',
		'KEY_KP_2',
		'KEY_KP_3',
		'KEY_KP_4',
		'KEY_KP_5',
		'KEY_KP_6',
		'KEY_KP_7',
		'KEY_KP_8',
		'KEY_KP_9',
		'KEY_KP_ADD',
		'KEY_KP_DECIMAL',
		'KEY_KP_DIVIDE',
		'KEY_KP_ENTER',
		'KEY_KP_EQUAL',
		'KEY_KP_MULTIPLY',
		'KEY_KP_SUBTRACT',
		'KEY_L',
		'KEY_LAST',
		'KEY_LEFT',
		'KEY_LEFT_ALT',
		'KEY_LEFT_BRACKET',
		'KEY_LEFT_CONTROL',
		'KEY_LEFT_SHIFT',
		'KEY_LEFT_SUPER',
		'KEY_M',
		'KEY_MENU',
		'KEY_MINUS',
		'KEY_N',
		'KEY_NUM_LOCK',
		'KEY_O',
		'KEY_P',
		'KEY_PAGE_DOWN',
		'KEY_PAGE_UP',
		'KEY_PAUSE',
		'KEY_PERIOD',
		'KEY_PRINT_SCREEN',
		'KEY_Q',
		'KEY_R',
		'KEY_RIGHT',
		'KEY_RIGHT_ALT',
		'KEY_RIGHT_BRACKET',
		'KEY_RIGHT_CONTROL',
		'KEY_RIGHT_SHIFT',
		'KEY_RIGHT_SUPER',
		'KEY_S',
		'KEY_SCROLL_LOCK',
		'KEY_SEMICOLON',
		'KEY_SLASH',
		'KEY_SPACE',
		'KEY_T',
		'KEY_TAB',
		'KEY_U',
		'KEY_UNKNOWN',
		'KEY_UP',
		'KEY_V',
		'KEY_W',
		'KEY_WORLD_1',
		'KEY_WORLD_2',
		'KEY_X',
		'KEY_Y',
		'KEY_Z',
		'LOCK_KEY_MODS',
		'MAXIMIZED',
		'MOD_ALT',
		'MOD_CAPS_LOCK',
		'MOD_CONTROL',
		'MOD_NUM_LOCK',
		'MOD_SHIFT',
		'MOD_SUPER',
		'MOUSE_BUTTON_1',
		'MOUSE_BUTTON_2',
		'MOUSE_BUTTON_3',
		'MOUSE_BUTTON_4',
		'MOUSE_BUTTON_5',
		'MOUSE_BUTTON_6',
		'MOUSE_BUTTON_7',
		'MOUSE_BUTTON_8',
		'MOUSE_BUTTON_LAST',
		'MOUSE_BUTTON_LEFT',
		'MOUSE_BUTTON_MIDDLE',
		'MOUSE_BUTTON_RIGHT',
		'NOT_INITIALIZED',
		'NO_CURRENT_CONTEXT',
		'NO_ERROR',
		'NO_WINDOW_CONTEXT',
		'OPENGL_ANY_PROFILE',
		'OPENGL_COMPAT_PROFILE',
		'OPENGL_CORE_PROFILE',
		'OPENGL_DEBUG_CONTEXT',
		'OPENGL_FORWARD_COMPAT',
		'OPENGL_PROFILE',
		'OUT_OF_MEMORY',
		'PLATFORM_ERROR',
		'PRESS',
		'RAW_MOUSE_MOTION',
		'RED_BITS',
		'REFRESH_RATE',
		'RELEASE',
		'REPEAT',
		'RESIZABLE',
		'SAMPLES',
		'SCALE_TO_MONITOR',
		'SRGB_CAPABLE',
		'STENCIL_BITS',
		'STEREO',
		'STICKY_KEYS',
		'STICKY_MOUSE_BUTTONS',
		'TRANSPARENT_FRAMEBUFFER',
		'TRUE',
		'VERSION_UNAVAILABLE',
		'VISIBLE',
		'VRESIZE_CURSOR',
		'X11_CLASS_NAME',
		'X11_INSTANCE_NAME'
	],
	#category : #'GLFW-Core'
}

{ #category : #initialization }
GLFWConstants class >> initialize [
	"self initialize"
	self initializeErrorCodes.
	self initializeMacros.
	
	self initializeWindowHints.
	self initializeRenderingHints.
	self initializeContextHints.
	self initializePlatformSpecificHints.
	self initializeOpenGLProfiles.
	
	self initializeInputMacros.
	self initializeInputModes.
	self initializeMouseMacros.
	self initializeKeyboardKeys.
	self initializeModifierKeys.
	self initializeCursorStates.
	self initializeCursorShapes
]

{ #category : #initialization }
GLFWConstants class >> initializeContextHints [

	CLIENT_API := 16r22001.
	CONTEXT_VERSION_MAJOR := 16r22002.
	CONTEXT_VERSION_MINOR := 16r22003.
	CONTEXT_REVISION := 16r22004.
	CONTEXT_ROBUSTNESS := 16r22005.
	OPENGL_FORWARD_COMPAT := 16r22006.
	OPENGL_DEBUG_CONTEXT := 16r22007.
	OPENGL_PROFILE := 16r22008.
	CONTEXT_RELEASE_BEHAVIOR := 16r22009.
	CONTEXT_NO_ERROR := 16r2200A.
	CONTEXT_CREATION_API := 16r2200B.
	SCALE_TO_MONITOR := 16r2200C
]

{ #category : #initialization }
GLFWConstants class >> initializeCursorShapes [

	ARROW_CURSOR := 16r36001.
	IBEAM_CURSOR := 16r36002.
	CROSSHAIR_CURSOR := 16r36003.
	HAND_CURSOR := 16r36004.
	HRESIZE_CURSOR := 16r36005.
	VRESIZE_CURSOR := 16r36006
]

{ #category : #initialization }
GLFWConstants class >> initializeCursorStates [

	CURSOR_NORMAL := 16r34001.
	CURSOR_HIDDEN := 16r34002.
	CURSOR_DISABLED := 16r34003
]

{ #category : #initialization }
GLFWConstants class >> initializeErrorCodes [

	NO_ERROR := 0.
	NOT_INITIALIZED := 16r10001.
	NO_CURRENT_CONTEXT := 16r10002.
	INVALID_ENUM := 16r10003.
	INVALID_VALUE := 16r10004.
	OUT_OF_MEMORY := 16r10005.
	API_UNAVAILABLE := 16r10006.
	VERSION_UNAVAILABLE := 16r10007.
	PLATFORM_ERROR := 16r10008.
	FORMAT_UNAVAILABLE := 16r10009.
	NO_WINDOW_CONTEXT := 16r1000A
]

{ #category : #initialization }
GLFWConstants class >> initializeInputMacros [

	RELEASE := 0.
	PRESS := 1.
	REPEAT := 2
]

{ #category : #initialization }
GLFWConstants class >> initializeInputModes [

	CURSOR := 16r33001.
	STICKY_KEYS := 16r33002.
	STICKY_MOUSE_BUTTONS := 16r33003.
	LOCK_KEY_MODS := 16r33004.
	RAW_MOUSE_MOTION := 16r33005
]

{ #category : #initialization }
GLFWConstants class >> initializeKeyboardKeys [

	KEY_UNKNOWN := -1.
	KEY_SPACE := 32.
	KEY_APOSTROPHE := 39. " ' "
	KEY_COMMA := 44. " , "
	KEY_MINUS := 45. " - "
	KEY_PERIOD := 46. " . "
	KEY_SLASH := 47. " / "
	KEY_0 := 48.
	KEY_1 := 49.
	KEY_2 := 50.
	KEY_3 := 51.
	KEY_4 := 52.
	KEY_5 := 53.
	KEY_6 := 54.
	KEY_7 := 55.
	KEY_8 := 56.
	KEY_9 := 57.
	KEY_SEMICOLON := 59. " ; "
	KEY_EQUAL := 61. " = "
	KEY_A := 65.
	KEY_B := 66.
	KEY_C := 67.
	KEY_D := 68.
	KEY_E := 69.
	KEY_F := 70.
	KEY_G := 71.
	KEY_H := 72.
	KEY_I := 73.
	KEY_J := 74.
	KEY_K := 75.
	KEY_L := 76.
	KEY_M := 77.
	KEY_N := 78.
	KEY_O := 79.
	KEY_P := 80.
	KEY_Q := 81.
	KEY_R := 82.
	KEY_S := 83.
	KEY_T := 84.
	KEY_U := 85.
	KEY_V := 86.
	KEY_W := 87.
	KEY_X := 88.
	KEY_Y := 89.
	KEY_Z := 90.
	KEY_LEFT_BRACKET := 91. " [ "
	KEY_BACKSLASH := 92. " \ "
	KEY_RIGHT_BRACKET := 93. " ] "
	KEY_GRAVE_ACCENT := 96. " ` "
	KEY_WORLD_1 := 161. " non-US #1 "
	KEY_WORLD_2 := 162. " non-US #2 "
	KEY_ESCAPE := 256.
	KEY_ENTER := 257.
	KEY_TAB := 258.
	KEY_BACKSPACE := 259.
	KEY_INSERT := 260.
	KEY_DELETE := 261.
	KEY_RIGHT := 262.
	KEY_LEFT := 263.
	KEY_DOWN := 264.
	KEY_UP := 265.
	KEY_PAGE_UP := 266.
	KEY_PAGE_DOWN := 267.
	KEY_HOME := 268.
	KEY_END := 269.
	KEY_CAPS_LOCK := 280.
	KEY_SCROLL_LOCK := 281.
	KEY_NUM_LOCK := 282.
	KEY_PRINT_SCREEN := 283.
	KEY_PAUSE := 284.
	KEY_F1 := 290.
	KEY_F2 := 291.
	KEY_F3 := 292.
	KEY_F4 := 293.
	KEY_F5 := 294.
	KEY_F6 := 295.
	KEY_F7 := 296.
	KEY_F8 := 297.
	KEY_F9 := 298.
	KEY_F10 := 299.
	KEY_F11 := 300.
	KEY_F12 := 301.
	KEY_F13 := 302.
	KEY_F14 := 303.
	KEY_F15 := 304.
	KEY_F16 := 305.
	KEY_F17 := 306.
	KEY_F18 := 307.
	KEY_F19 := 308.
	KEY_F20 := 309.
	KEY_F21 := 310.
	KEY_F22 := 311.
	KEY_F23 := 312.
	KEY_F24 := 313.
	KEY_F25 := 314.
	KEY_KP_0 := 320.
	KEY_KP_1 := 321.
	KEY_KP_2 := 322.
	KEY_KP_3 := 323.
	KEY_KP_4 := 324.
	KEY_KP_5 := 325.
	KEY_KP_6 := 326.
	KEY_KP_7 := 327.
	KEY_KP_8 := 328.
	KEY_KP_9 := 329.
	KEY_KP_DECIMAL := 330.
	KEY_KP_DIVIDE := 331.
	KEY_KP_MULTIPLY := 332.
	KEY_KP_SUBTRACT := 333.
	KEY_KP_ADD := 334.
	KEY_KP_ENTER := 335.
	KEY_KP_EQUAL := 336.
	KEY_LEFT_SHIFT := 340.
	KEY_LEFT_CONTROL := 341.
	KEY_LEFT_ALT := 342.
	KEY_LEFT_SUPER := 343.
	KEY_RIGHT_SHIFT := 344.
	KEY_RIGHT_CONTROL := 345.
	KEY_RIGHT_ALT := 346.
	KEY_RIGHT_SUPER := 347.
	KEY_MENU := 348.
	KEY_LAST := KEY_MENU
]

{ #category : #initialization }
GLFWConstants class >> initializeMacros [

	FALSE := 0.
	TRUE := 1
]

{ #category : #initialization }
GLFWConstants class >> initializeModifierKeys [

	MOD_SHIFT := 2r00000001.
	MOD_CONTROL := 2r00000010.
	MOD_ALT := 2r00000100.
	MOD_SUPER := 2r00001000.
	MOD_CAPS_LOCK := 2r00010000.
	MOD_NUM_LOCK := 2r00100000
]

{ #category : #initialization }
GLFWConstants class >> initializeMouseMacros [

	MOUSE_BUTTON_1 := 0.
	MOUSE_BUTTON_2 := 1.
	MOUSE_BUTTON_3 := 2.
	MOUSE_BUTTON_4 := 3.
	MOUSE_BUTTON_5 := 4.
	MOUSE_BUTTON_6 := 5.
	MOUSE_BUTTON_7 := 6.
	MOUSE_BUTTON_8 := 7.
	MOUSE_BUTTON_LAST := MOUSE_BUTTON_8.
	MOUSE_BUTTON_LEFT := MOUSE_BUTTON_1.
	MOUSE_BUTTON_RIGHT := MOUSE_BUTTON_2.
	MOUSE_BUTTON_MIDDLE := MOUSE_BUTTON_3
]

{ #category : #initialization }
GLFWConstants class >> initializeOpenGLProfiles [

	OPENGL_ANY_PROFILE := 0.
	OPENGL_CORE_PROFILE := 16r32001.
	OPENGL_COMPAT_PROFILE := 16r32002
]

{ #category : #initialization }
GLFWConstants class >> initializePlatformSpecificHints [

	COCOA_RETINA_FRAMEBUFFER := 16r23001.
	COCOA_FRAME_NAME := 16r23002.
	COCOA_GRAPHICS_SWITCHING := 16r23003.
	
	X11_CLASS_NAME := 16r24001.
	X11_INSTANCE_NAME := 16r24002
]

{ #category : #initialization }
GLFWConstants class >> initializeRenderingHints [

	RED_BITS := 16r21001.
	GREEN_BITS := 16r21002.
	BLUE_BITS := 16r21003.
	ALPHA_BITS := 16r21004.
	DEPTH_BITS := 16r21005.
	STENCIL_BITS := 16r21006.
	ACCUM_RED_BITS := 16r21007.
	ACCUM_GREEN_BITS := 16r21008.
	ACCUM_BLUE_BITS := 16r21009.
	ACCUM_ALPHA_BITS := 16r2100A.
	AUX_BUFFERS := 16r2100B.
	STEREO := 16r2100C.
	SAMPLES := 16r2100D.
	SRGB_CAPABLE := 16r2100E.
	REFRESH_RATE := 16r2100F.
	DOUBLEBUFFER := 16r21010
]

{ #category : #initialization }
GLFWConstants class >> initializeWindowHints [

	FOCUSED := 16r20001.
	ICONIFIED := 16r20002.
	RESIZABLE := 16r20003.
	VISIBLE := 16r20004.
	DECORATED := 16r20005.
	AUTO_ICONIFY := 16r20006.
	FLOATING := 16r20007.
	MAXIMIZED := 16r20008.
	CENTER_CURSOR := 16r20009.
	TRANSPARENT_FRAMEBUFFER := 16r2000A.
	HOVERED := 16r2000B.
	FOCUS_ON_SHOW := 16r2000C
]
