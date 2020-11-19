Class {
	#name : #RtMorphicProject,
	#superclass : #MorphicProject,
	#category : #'RenderThee-Project'
}

{ #category : #testing }
RtMorphicProject >> canApplyUserInterfaceTheme [

	^ false "for now"
]

{ #category : #enter }
RtMorphicProject >> finalEnterActions: leavingProject [

	super finalEnterActions: leavingProject.
	world worldState renderer: (RtLayerTreeRenderer morph: world imageStore: (RtDisplayFramebufferStore extent: Display extent)).
]

{ #category : #enter }
RtMorphicProject >> finalExitActions: enteringProject [

	world worldState renderer release.
	super finalExitActions: enteringProject
]

{ #category : #initialization }
RtMorphicProject >> initialize [
	"Initialize a new Morphic Project"
	super initialize.
	self installPasteUpAsWorld: (RtPasteUpMorph new)
]

{ #category : #'scheduling & debugging' }
RtMorphicProject >> interruptName: labelString [

	self addDeferredUIMessage: [self parent enter]
]
