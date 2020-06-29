Class {
	#name : #RtMirrorControl,
	#superclass : #Morph,
	#instVars : [
		'renderer',
		'ogl'
	],
	#pools : [
		'GLConstants'
	],
	#category : 'RenderThee-Core'
}

{ #category : #deletion }
RtMirrorControl >> delete [
	renderer release.
	super delete
]

{ #category : #initialization }
RtMirrorControl >> initialize [
	super initialize.
	self extent: 200@200.

	renderer := RtOpenGLRenderer new.
	
self stopStepping.
]

{ #category : #stepping }
RtMirrorControl >> step [

	"renderer renderFrame."
	
]

{ #category : #stepping }
RtMirrorControl >> step2 [

	renderer shouldClose
		ifTrue: [self delete]
		ifFalse: [renderer renderFrame]
]

{ #category : #stepping }
RtMirrorControl >> stepTime [

   ^ 16
]
