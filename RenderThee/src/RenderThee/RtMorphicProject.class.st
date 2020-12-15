Class {
	#name : #RtMorphicProject,
	#superclass : #MorphicProject,
	#category : #'RenderThee-Project',
	#commentStamp : ''
}

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicProject >> canApplyUserInterfaceTheme [

	^ false "for now"
]

{
	#category : #enter,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicProject >> finalEnterActions: leavingProject [

	super finalEnterActions: leavingProject.
	world worldState renderer: (RtLayerTreeRenderer morph: world imageStore: (RtDisplayFramebufferStore extent: Display extent)).
]

{
	#category : #enter,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicProject >> finalExitActions: enteringProject [

	world worldState renderer release.
	super finalExitActions: enteringProject
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicProject >> initialize [
	"Initialize a new Morphic Project"
	super initialize.
	self installPasteUpAsWorld: (RtPasteUpMorph new)
]

{
	#category : #'scheduling & debugging',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicProject >> interruptName: labelString [

	self addDeferredUIMessage: [self parent enter]
]
