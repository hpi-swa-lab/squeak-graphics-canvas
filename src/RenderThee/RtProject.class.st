Class {
	#name : #RtProject,
	#superclass : #MorphicProject,
	#instVars : [
		'ogl'
	],
	#category : #'RenderThee-Project'
}

{ #category : #testing }
RtProject >> canApplyUserInterfaceTheme [

	^ false "for now"
]

{ #category : #enter }
RtProject >> finalEnterActions: leavingProject [

	super finalEnterActions: leavingProject.
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
