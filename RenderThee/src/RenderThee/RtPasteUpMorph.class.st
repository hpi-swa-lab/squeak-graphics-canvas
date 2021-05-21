Class {
	#name : #RtPasteUpMorph,
	#superclass : #PasteUpMorph,
	#category : #'RenderThee-Project'
}

{
	#category : #'world state',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtPasteUpMorph >> invalidRect: damageRect from: aMorph [

	self isWorldMorph ifTrue: [
		worldState recordDamagedRect: damageRect from: aMorph].
	^super invalidRect: damageRect from: aMorph
]

{
	#category : #'world state',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtPasteUpMorph >> privateOuterDisplayWorld [

	(self valueOfProperty: #shouldDisplayWorld ifAbsent: [true])
		ifTrue: [worldState renderWorld: self].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtPasteUpMorph >> worldState [

	^ worldState
]
