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

	otherWindow == self ifTrue: [^ true].
	otherWindow getHandle = handle ifTrue: [^ true].
	^ false
]

{ #category : #accessing }
GLFWWindow >> aspectRatio: pointOrNumber [

	| numer denom |
	pointOrNumber isPoint
		ifTrue: [numer := pointOrNumber x. denom := pointOrNumber y]
		ifFalse: ["number"
			| fraction |
			fraction := pointOrNumber asFraction.
			numer := fraction numerator.
			denom := fraction denominator].
	GLFW setWindowAspectRatio: self with: numer with: denom
]

{ #category : #accessing }
GLFWWindow >> contentScale [
	"The ratio between the current DPI and the platform's default DPI."
	| xscale yscale |
	xscale := FloatArray new: 1.
	yscale := FloatArray new: 1.
	GLFW getWindowContentScale: self with: xscale with: yscale.
	^ xscale @ yscale
]

{ #category : #accessing }
GLFWWindow >> context [

	^ GLFW contextForWindow: self
]

{ #category : #callbacks }
GLFWWindow >> cursorPosCallback: aBlock [

	GLFW setCursorPosCallback: self with: aBlock
]

{ #category : #'initialize-release' }
GLFWWindow >> destroy [

	GLFW destroyWindow: self
]

{ #category : #accessing }
GLFWWindow >> disableAspectRatio [

	self aspectRatio: DONT_CARE @ DONT_CARE
]

{ #category : #accessing }
GLFWWindow >> extent [

	| width height |
	width := IntegerArray new: 1.
	height := IntegerArray new: 1.
	GLFW getWindowSize: self with: width with: height.
	^ width first @ height first
]

{ #category : #accessing }
GLFWWindow >> extent: aPoint [

	GLFW setWindowSize: self with: aPoint x with: aPoint y
]

{ #category : #actions }
GLFWWindow >> focus [
	"Brings the window to front and sets input focus. The window should already be visible and not iconified."
	"Do NOT use this function to steal focus from other applications unless you are certain that is what the user wants. Focus stealing can be extremely disruptive. For a less disruptive way of getting the user's attention, see #requestAttention"
	GLFW focusWindow: self
]

{ #category : #accessing }
GLFWWindow >> frameWidths [

	| left top right bottom |
	left := IntegerArray new: 1.
	top := IntegerArray new: 1.
	right := IntegerArray new: 1.
	bottom := IntegerArray new: 1.
	GLFW getWindowFrameSize: self with: left with: top with: right with: bottom.
	"not sure whether rectangle makes sense here"
	^ Rectangle left: left right: right top: top bottom: bottom
]

{ #category : #rendering }
GLFWWindow >> framebufferExtent [

	| width height |
	width := IntegerArray new: 1.
	height := IntegerArray new: 1.
	GLFW getFramebufferSize: self with: width with: height.
	^ width first @ height first
]

{ #category : #callbacks }
GLFWWindow >> framebufferSizeCallback: aBlock [

	GLFW setFramebufferSizeCallback: self with: aBlock
]

{ #category : #input }
GLFWWindow >> getKey: key [

	^ GLFW getKey: self with: key
]

{ #category : #comparing }
GLFWWindow >> hash [

	^ handle hash
]

{ #category : #actions }
GLFWWindow >> hide [
	"Hides the window if it was previously visible. If the window is already hidden or is in full screen mode, this function does nothing."
	GLFW hideWindow: self
]

{ #category : #actions }
GLFWWindow >> iconify [
	"Iconifies (minimizes) the window if it was previously restored. If the window is already iconified, this function does nothing. If the specified window is a full screen window, the original monitor resolution is restored until the window is restored."
	GLFW iconifyWindow: self
]

{ #category : #'initialize-release' }
GLFWWindow >> makeCurrent [

	GLFW makeContextCurrent: self
]

{ #category : #accessing }
GLFWWindow >> maxExtent: aPoint [

	self minExtent: DONT_CARE @ DONT_CARE maxExtent: aPoint
]

{ #category : #actions }
GLFWWindow >> maximize [
	"Maximizes the window if it was previously not maximized. If the window is already maximized, this function does nothing. If the specified window is a full screen window, this function does nothing."
	GLFW maximizeWindow: self
]

{ #category : #accessing }
GLFWWindow >> minExtent: aPoint [

	self minExtent: aPoint maxExtent: DONT_CARE @ DONT_CARE
]

{ #category : #accessing }
GLFWWindow >> minExtent: minPoint maxExtent: maxPoint [

	GLFW
		setWindowSizeLimits: self
		with: minPoint x
		with: minPoint y
		with: maxPoint x
		with: maxPoint y
]

{ #category : #monitor }
GLFWWindow >> monitor [
	"Returns the handle of the monitor this window is in full screen on. Returns nil if the window is in windowed mode or an error occured."
	| monitor |
	monitor := GLFW getWindowMonitor: self.
	^ monitor isNull
		ifTrue: [nil]
		ifFalse: [monitor]
]

{ #category : #monitor }
GLFWWindow >> monitor: aMonitor bounds: aRectangle refreshRate: hertz [
	"Sets the monitor that the window uses for full screen mode or, if the monitor is nil, makes it windowed mode.
	When setting a monitor, this function updates the width, height and refresh rate of the desired video mode and switches to the video mode closest to it. The window position is ignored when setting a monitor.
	When the monitor is nil, the position, width and height are used to place the window content area. The refresh rate is ignored when no monitor is specified. If you only wish to update the resolution of a full screen window or the extent of a windowed mode window, use #extent: .
	When a window transitions from full screen to windowed mode, this function restores any previous window settings such as whether it is decorated, floating, resizable, has size or aspect ratio limits, etc."
	GLFW
		setWindowMonitor: self
		with: aMonitor
		with: aRectangle left
		with: aRectangle top
		with: aRectangle width
		with: aRectangle height
		with: hertz
]

{ #category : #callbacks }
GLFWWindow >> mouseButtonCallback: aBlock [

	GLFW setMouseButtonCallback: self with: aBlock
]

{ #category : #accessing }
GLFWWindow >> opacity [

	^ GLFW getWindowOpacity: self
]

{ #category : #accessing }
GLFWWindow >> opacity: aFloat [
	"Set the opacity of the window, including any decorations.
	The opacity (or alpha) value is a positive finite number between zero and one, where zero is fully transparent and one is fully opaque. The initial opacity value for newly created windows is one. A window created with framebuffer transparency may not use whole window transparency. The results of doing this are undefined."
	GLFW setWindowOpacity: self with: aFloat asFloat
]

{ #category : #accessing }
GLFWWindow >> position [

	| x y |
	x := IntegerArray new: 1.
	y := IntegerArray new: 1.
	GLFW getWindowPos: self with: x with: y.
	^ x first @ y first
]

{ #category : #accessing }
GLFWWindow >> position: aPoint [

	GLFW setWindowPos: self with: aPoint x with: aPoint y
]

{ #category : #actions }
GLFWWindow >> requestAttention [
	"Requests user attention to the specified window.  On platforms where this is not supported, attention is requested to the application as a whole. Once the user has given attention, usually by focusing the window or application, the system will end the request automatically."
	GLFW requestWindowAttention: self
]

{ #category : #actions }
GLFWWindow >> restore [
	"Restores the window if it was previously iconified (minimized) or maximized. If the window is already restored, this function does nothing. If the window is a full screen window, the resolution chosen for the window is restored on the selected monitor."
	GLFW restoreWindow: self
]

{ #category : #testing }
GLFWWindow >> shouldClose [

	^ GLFW windowShouldClose: self
]

{ #category : #accessing }
GLFWWindow >> shouldClose: aBoolean [

	GLFW setWindowShouldClose: self with: aBoolean
]

{ #category : #actions }
GLFWWindow >> show [
	"Makes the window visible if it was previously hidden. If the window is already visible or is in full screen mode, this function does nothing. By default, windowed mode windows are focused when shown."
	GLFW showWindow: self
]

{ #category : #rendering }
GLFWWindow >> swapBuffers [

	GLFW swapBuffers: self
]

{ #category : #accessing }
GLFWWindow >> title: aString [

	GLFW setWindowTitle: self with: aString
]
