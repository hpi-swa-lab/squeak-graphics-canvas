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
	
	ogl := GL4_5 newGLFWIn: ActiveWorld bounds
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
