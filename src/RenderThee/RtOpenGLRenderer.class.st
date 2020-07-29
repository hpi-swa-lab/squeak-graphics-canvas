Class {
	#name : #RtOpenGLRenderer,
	#superclass : #RtRenderer,
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
		| evt |
		evt := MouseMoveEvent new
				setType: #mouseMove
				startPoint: x @ y
				endPoint: x @ y
				trail: nil
				buttons: 0
				hand: ActiveHand
				stamp: 0.
		ActiveHand handleEvent: evt].
	
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

	| cacheDecider rootLayer |
	ActiveWorld updateLayerTree.
	
	rootLayer := ActiveWorld groupLayer.
	
	cacheDecider := RtCacheDecider new
						canvasClass: GLCanvas;
						cachingStrategy: (RtCacheAfterUnchangedDraws threshold: 100);
						yourself.
	cacheDecider visit: rootLayer. 
	
	ogl makeCurrentDuring: [
		GLCanvas
			extent: ActiveWorld extent
			store: RtDisplayFramebufferStore
			do: [:canvas |
				| compositor |
				compositor := RtOpenGLCompositor
								canvas: canvas.
				compositor visit: rootLayer]]
]

{ #category : #accessing }
RtOpenGLRenderer >> shouldClose [
	^ ogl = #glSuspended or: [ogl shouldClose]
]
