Class {
	#name : #RtMirrorControl,
	#superclass : #Morph,
	#instVars : [
		'renderInfo',
		'renderer',
		'ogl'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Core'
}

{ #category : #deletion }
RtMirrorControl >> delete [
	renderer release.
	super delete
]

{ #category : #accessing }
RtMirrorControl >> frameTime: milliseconds [

	renderInfo contents: milliseconds asString
]

{ #category : #initialization }
RtMirrorControl >> initialize [
	super initialize.
	self extent: 200@200.
	
	renderInfo := StringMorph new.
	renderInfo layoutFrame: LayoutFrame fullFrame.
	self addMorph: renderInfo.

	renderer := RtOpenGLRenderer new.
	
self stopStepping.
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
			self frameTime: [renderer renderFrame] timeToRunWithoutGC]
]

{ #category : #stepping }
RtMirrorControl >> stepTime [

   ^ 16
]
