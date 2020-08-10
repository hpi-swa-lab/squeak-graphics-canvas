Class {
	#name : #RtWorldState,
	#superclass : #WorldState,
	#instVars : [
		'renderer'
	],
	#category : #'RenderThee-Project'
}

{ #category : #canvas }
RtWorldState >> canvas: aCanvas [

	canvas := aCanvas
]

{ #category : #canvas }
RtWorldState >> doFullRepaint [

]

{ #category : #initialization }
RtWorldState >> initialize [

	hands := Array new.
	stepList := Heap sortBlock: self stepListSortBlock.
	lastStepTime := 0.
	lastAlarmTime := 0
]

{ #category : #canvas }
RtWorldState >> recordDamagedRect: damageRect [

	"should not be called"
]

{ #category : #canvas }
RtWorldState >> recordDamagedRect: damageRect from: aMorph [

	
]

{ #category : #'update cycle' }
RtWorldState >> renderWorld: aWorld [
	"Update this world's display."
	aWorld fullBounds. "send #ownerChanged to submorphs."
	aWorld submorphs do: [:m | m fullBounds]. "force re-layout if needed"
	renderer renderFrame
]

{ #category : #accessing }
RtWorldState >> renderer [

	^ renderer
]

{ #category : #accessing }
RtWorldState >> renderer: anObject [

	renderer := anObject
]

{ #category : #canvas }
RtWorldState >> resetDamageRecorder [

	
]
