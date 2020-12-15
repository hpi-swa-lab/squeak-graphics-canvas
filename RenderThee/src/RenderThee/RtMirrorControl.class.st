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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMirrorControl >> delete [

	self glLibrary isSymbol ifFalse: [self glLibrary context destroy].
	super delete
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:21'
}
RtMirrorControl >> glLibrary [

	^ store framebuffer library
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMirrorControl >> initialize [

	super initialize.
	self extent: 200@200.
	
	store := RtDisplayFramebufferStore extent: ActiveWorld extent.
	renderer := RtLayerTreeRenderer morph: ActiveWorld imageStore: store
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMirrorControl >> shouldClose [

	^ self glLibrary isSymbol or: [self glLibrary shouldClose]
]

{
	#category : #stepping,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMirrorControl >> step [

	self shouldClose ifTrue: [^ self delete].
	renderer renderFrame
]

{
	#category : #stepping,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMirrorControl >> stepTime [

   ^ 16
]
