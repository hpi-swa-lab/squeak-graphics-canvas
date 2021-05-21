Class {
	#name : #RtWorldState,
	#superclass : #WorldState,
	#instVars : [
		'renderer'
	],
	#category : #'RenderThee-Project'
}

{
	#category : #canvas,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> canvas: aCanvas [

	canvas := aCanvas
]

{
	#category : #canvas,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> doFullRepaint [

]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> initialize [

	hands := Array new.
	stepList := Heap sortBlock: self stepListSortBlock.
	lastStepTime := 0.
	lastAlarmTime := 0
]

{
	#category : #canvas,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> recordDamagedRect: damageRect [

	"should not be called"
]

{
	#category : #canvas,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> recordDamagedRect: damageRect from: aMorph [

	
]

{
	#category : #'update cycle',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> renderWorld: aWorld [
	"Update this world's display."
	aWorld fullBounds. "send #ownerChanged to submorphs."
	aWorld submorphs do: [:m | m fullBounds]. "force re-layout if needed"
	renderer renderFrame
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> renderer: anObject [

	renderer := anObject
]

{
	#category : #canvas,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtWorldState >> resetDamageRecorder [

	
]
