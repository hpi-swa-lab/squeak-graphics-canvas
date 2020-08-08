Class {
	#name : #RtPasteUpMorph,
	#superclass : #PasteUpMorph,
	#category : #'RenderThee-Project'
}

{ #category : #'world state' }
RtPasteUpMorph >> beWorldForProject: aProject [

	self privateOwner: nil.
	worldState := RtWorldState new.
	self addHand: HandMorph new.
	self setProperty: #automaticPhraseExpansion toValue: true.
	self setProperty: #optimumExtentFromAuthor toValue: Display extent.
	self startSteppingSubmorphsOf: self
]

{ #category : #'change reporting' }
RtPasteUpMorph >> invalidRect: damageRect from: aMorph [

	self isWorldMorph ifTrue: [
		worldState recordDamagedRect: damageRect from: aMorph].
	^super invalidRect: damageRect from: aMorph
]

{ #category : #'world state' }
RtPasteUpMorph >> privateOuterDisplayWorld [

	(self valueOfProperty: #shouldDisplayWorld ifAbsent: [true])
		ifTrue: [worldState renderWorld: self].
]

{ #category : #accessing }
RtPasteUpMorph >> worldState [

	^ worldState
]
