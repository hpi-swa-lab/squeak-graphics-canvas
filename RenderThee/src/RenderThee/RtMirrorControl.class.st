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
	#category : #'RenderThee-Demo',
	#commentStamp : ''
}

{
	#category : #deletion,
	#timestamp : ''
}
RtMirrorControl >> delete [

	self glLibrary isSymbol ifFalse: [self glLibrary context destroy].
	super delete
]

{
	#category : #accessing,
	#timestamp : ''
}
RtMirrorControl >> glLibrary [

	^ store framebuffer library
]

{
	#category : #initialization,
	#timestamp : ''
}
RtMirrorControl >> initialize [

	super initialize.
	self extent: 200@200.
	
	store := RtDisplayFramebufferStore extent: ActiveWorld extent.
	renderer := RtLayerTreeRenderer morph: ActiveWorld imageStore: store
]

{
	#category : #testing,
	#timestamp : ''
}
RtMirrorControl >> shouldClose [

	^ self glLibrary isSymbol or: [self glLibrary shouldClose]
]

{
	#category : #stepping,
	#timestamp : ''
}
RtMirrorControl >> step [

	self shouldClose ifTrue: [^ self delete].
	renderer renderFrame
]

{
	#category : #stepping,
	#timestamp : ''
}
RtMirrorControl >> stepTime [

   ^ 16
]
