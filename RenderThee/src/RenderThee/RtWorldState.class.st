Class {
	#name : #RtWorldState,
	#superclass : #WorldState,
	#instVars : [
		'renderer'
	],
	#category : #'RenderThee-Project',
	#commentStamp : ''
}

{
	#category : #canvas,
	#timestamp : ''
}
RtWorldState >> canvas: aCanvas [

	canvas := aCanvas
]

{
	#category : #canvas,
	#timestamp : ''
}
RtWorldState >> doFullRepaint [

]

{
	#category : #initialization,
	#timestamp : ''
}
RtWorldState >> initialize [

	hands := Array new.
	stepList := Heap sortBlock: self stepListSortBlock.
	lastStepTime := 0.
	lastAlarmTime := 0
]

{
	#category : #canvas,
	#timestamp : ''
}
RtWorldState >> recordDamagedRect: damageRect [

	"should not be called"
]

{
	#category : #canvas,
	#timestamp : ''
}
RtWorldState >> recordDamagedRect: damageRect from: aMorph [

	
]

{
	#category : #'update cycle',
	#timestamp : ''
}
RtWorldState >> renderWorld: aWorld [
	"Update this world's display."
	aWorld fullBounds. "send #ownerChanged to submorphs."
	aWorld submorphs do: [:m | m fullBounds]. "force re-layout if needed"
	renderer renderFrame
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWorldState >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#timestamp : ''
}
RtWorldState >> renderer: anObject [

	renderer := anObject
]

{
	#category : #canvas,
	#timestamp : ''
}
RtWorldState >> resetDamageRecorder [

	
]
