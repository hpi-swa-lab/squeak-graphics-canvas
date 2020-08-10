Class {
	#name : #RtMirrorControl,
	#superclass : #Morph,
	#instVars : [
		'renderer',
		'store'
	],
	#category : #'RenderThee-Core'
}

{ #category : #deletion }
RtMirrorControl >> delete [

	self glLibrary ~= #glSuspended ifTrue: [self glLibrary destroy].
	super delete
]

{ #category : #accessing }
RtMirrorControl >> frameTime: milliseconds [

	"FileStream stdout
		nextPutAll: milliseconds asString;
		lf"
]

{ #category : #accessing }
RtMirrorControl >> glLibrary [

	^ store framebuffer gl
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

	^ self glLibrary = #glSuspended or: [self glLibrary shouldClose]
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
