Class {
	#name : #RtMorphicProject,
	#superclass : #MorphicProject,
	#category : #'RenderThee-Project',
	#commentStamp : ''
}

{
	#category : #testing,
	#timestamp : ''
}
RtMorphicProject >> canApplyUserInterfaceTheme [

	^ false "for now"
]

{
	#category : #enter,
	#timestamp : ''
}
RtMorphicProject >> finalEnterActions: leavingProject [

	super finalEnterActions: leavingProject.
	world worldState renderer: (RtLayerTreeRenderer morph: world imageStore: (RtDisplayFramebufferStore extent: Display extent)).
]

{
	#category : #enter,
	#timestamp : ''
}
RtMorphicProject >> finalExitActions: enteringProject [

	world worldState renderer release.
	super finalExitActions: enteringProject
]

{
	#category : #initialization,
	#timestamp : ''
}
RtMorphicProject >> initialize [
	"Initialize a new Morphic Project"
	super initialize.
	self installPasteUpAsWorld: (RtPasteUpMorph new)
]

{
	#category : #'scheduling & debugging',
	#timestamp : ''
}
RtMorphicProject >> interruptName: labelString [

	self addDeferredUIMessage: [self parent enter]
]
