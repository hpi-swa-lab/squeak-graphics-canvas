initialization
initialize
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