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

{ #category : #accessing }
RtMirrorControl >> frameTime: milliseconds [

	FileStream stdout
		nextPutAll: milliseconds asString;
		lf
]

{ #category : #initialization }
RtMirrorControl >> initialize [
	super initialize.
	self extent: 200@200.
	
	renderer := RtOpenGLRenderer new
]

{ #category : #stepping }
RtMirrorControl >> step [

	self step2
]

{ #category : #stepping }
RtMirrorControl >> step2 [

	renderer shouldClose
		ifTrue: [self delete]
		ifFalse: [
			self frameTime: [renderer renderFrame] timeToRun]
]

{ #category : #stepping }
RtMirrorControl >> stepTime [

   ^ 16
]
