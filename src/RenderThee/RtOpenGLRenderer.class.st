Class {
	#name : #RtOpenGLRenderer,
	#superclass : #Object,
	#instVars : [
		'ogl'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #initialization }
RtOpenGLRenderer >> initialize [

	super initialize.
	
	ActiveWorld morphsToRedraw: nil.
	ActiveWorld allMorphsDo: [:m | m groupLayer: nil].
	
	RtRecordingCanvas record: ActiveWorld.
	
	ogl := GL4_5 newGLFWIn: ActiveWorld bounds.
	
	ogl context cursorCallback: [:x :y |
		ActiveHand handleEvent: (MouseMoveEvent new setType: #mouseMove startPoint: x @ y endPoint: x @ y trail: nil buttons: 0 hand: ActiveHand stamp: 0)].
	
	ogl context mouseButtonCallback: [:button :down :mods |
		ActiveHand handleEvent: (MouseButtonEvent new
			setType: (down ifTrue: [#mouseDown] ifFalse: [#mouseUp])
			position: ActiveHand position
			which: button
			buttons: button
			hand: ActiveHand
			stamp: 0)]
]

{ #category : #initialization }
RtOpenGLRenderer >> release [

	ogl ~= #glSuspended ifTrue: [ogl destroy].
	super release
]

{ #category : #rendering }
RtOpenGLRenderer >> renderFrame [

	ActiveWorld updateLayerTree.
	
	ogl makeCurrentDuring: [
		GLCanvas extent: ActiveWorld extent store: RtDisplayFramebufferStore do: [:canvas |
			ActiveWorld groupLayer visit: (RtOpenGLCompositor canvas: canvas cachingStrategy: RtConservativeCaching new)]]
]

{ #category : #accessing }
RtOpenGLRenderer >> shouldClose [
	^ ogl = #glSuspended or: [ogl shouldClose]
]
