initialize-release
initializeIn: bounds for: aLibraryClass title: aString

	libraryClass := aLibraryClass.

	GLFW windowHint: CONTEXT_VERSION_MAJOR with: aLibraryClass majorVersion.
	GLFW windowHint: CONTEXT_VERSION_MINOR with: aLibraryClass minorVersion.
	
	callbacks := Dictionary new.
	
	window := GLFWWindow
				width: bounds width
				height: bounds height
				title: aString.
	
	GLFW getError ~= NO_ERROR ifTrue: [
		^ self error: 'GLFW Error'].
	
	self initializeWindowState