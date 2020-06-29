Class {
	#name : #RtProject,
	#superclass : #MorphicProject,
	#instVars : [
		'ogl'
	],
	#category : #'RenderThee-Project'
}

{ #category : #enter }
RtProject >> finalEnterActions: leavingProject [

	super finalEnterActions: leavingProject.
	self world initOpenGL ifFalse: [
		OSProcess thisOSProcess stdOut
			nextPutAll: 'Failed';
			cr; lf.
		self exit].
	OSProcess thisOSProcess stdOut
			nextPutAll: 'Succeeded';
			cr; lf.
]

{ #category : #enter }
RtProject >> finalExitActions: enteringProject [

	super finalExitActions: enteringProject.
	self world releaseOpenGL
]

{ #category : #initialization }
RtProject >> initialize [
	"Initialize a new Morphic Project"
	super initialize.
	self installPasteUpAsWorld: (RtPasteUpMorph new)
]

{ #category : #'scheduling & debugging' }
RtProject >> interruptName: labelString [

	self addDeferredUIMessage: [self parent enter]
]
