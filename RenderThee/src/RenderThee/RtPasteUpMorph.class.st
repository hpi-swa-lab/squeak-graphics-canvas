Class {
	#name : #RtPasteUpMorph,
	#superclass : #PasteUpMorph,
	#category : #'RenderThee-Project',
	#commentStamp : ''
}

{
	#category : #'world state',
	#timestamp : ''
}
RtPasteUpMorph >> beWorldForProject: aProject [

	self privateOwner: nil.
	worldState := RtWorldState new.
	self addHand: HandMorph new.
	self setProperty: #automaticPhraseExpansion toValue: true.
	self setProperty: #optimumExtentFromAuthor toValue: Display extent.
	self startSteppingSubmorphsOf: self
]

{
	#category : #'change reporting',
	#timestamp : ''
}
RtPasteUpMorph >> invalidRect: damageRect from: aMorph [

	self isWorldMorph ifTrue: [
		worldState recordDamagedRect: damageRect from: aMorph].
	^super invalidRect: damageRect from: aMorph
]

{
	#category : #'world state',
	#timestamp : ''
}
RtPasteUpMorph >> privateOuterDisplayWorld [

	(self valueOfProperty: #shouldDisplayWorld ifAbsent: [true])
		ifTrue: [worldState renderWorld: self].
]

{
	#category : #accessing,
	#timestamp : ''
}
RtPasteUpMorph >> worldState [

	^ worldState
]
