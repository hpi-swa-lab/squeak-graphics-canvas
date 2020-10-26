"
Upon initialization I open a separate GLFW window that exists until I am deleted.
I render the ActiveWorld into said window using a layer tree renderer.
"
Class {
	#name : #RtMirrorControl,
	#superclass : #Morph,
	#instVars : [
		'renderer',
		'store'
	],
	#category : #'RenderThee-Demo'
}

{ #category : #deletion }
RtMirrorControl >> delete [

	self glLibrary isSymbol ifFalse: [self glLibrary context destroy].
	super delete
]

{ #category : #accessing }
RtMirrorControl >> glLibrary [

	^ store framebuffer library
]

{ #category : #initialization }
RtMirrorControl >> initialize [

	super initialize.
	self extent: 200@200.
	
	store := RtDisplayFramebufferStore extent: ActiveWorld extent.
	renderer := RtLayerTreeRenderer morph: ActiveWorld imageStore: store
]

{ #category : #testing }
RtMirrorControl >> shouldClose [

	^ self glLibrary isSymbol or: [self glLibrary shouldClose]
]

{ #category : #stepping }
RtMirrorControl >> step [

	self shouldClose ifTrue: [^ self delete].
	renderer renderFrame
]

{ #category : #stepping }
RtMirrorControl >> stepTime [

   ^ 16
]
