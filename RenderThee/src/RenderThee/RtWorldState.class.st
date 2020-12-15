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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> canvas: aCanvas [

	canvas := aCanvas
]

{
	#category : #canvas,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> doFullRepaint [

]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> initialize [

	hands := Array new.
	stepList := Heap sortBlock: self stepListSortBlock.
	lastStepTime := 0.
	lastAlarmTime := 0
]

{
	#category : #canvas,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> recordDamagedRect: damageRect [

	"should not be called"
]

{
	#category : #canvas,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> recordDamagedRect: damageRect from: aMorph [

	
]

{
	#category : #'update cycle',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> renderWorld: aWorld [
	"Update this world's display."
	aWorld fullBounds. "send #ownerChanged to submorphs."
	aWorld submorphs do: [:m | m fullBounds]. "force re-layout if needed"
	renderer renderFrame
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> renderer: anObject [

	renderer := anObject
]

{
	#category : #canvas,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtWorldState >> resetDamageRecorder [

	
]
