Extension { #name : #Morph }

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Morph >> addedMorph: aMorph [
	"Notify the receiver that the given morph was just added."

]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> groupLayer [

	^ self valueOfProperty: #groupLayer
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> groupLayer: aGroupLayer [

	^ self
		setProperty: #groupLayer
		toValue: aGroupLayer
]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Morph >> invalidRect: damageRect [

	^ self invalidRect: damageRect from: self
]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Morph >> invalidRect: aRectangle from: aMorph [
	| damageRect |
	self visible ifFalse: [ ^self ].
	aRectangle hasPositiveExtent ifFalse: [ ^self ].
	damageRect := aRectangle.
	aMorph == self
		ifTrue: [self markNeedsRedraw]
		ifFalse: [
			"Clip to receiver's clipping bounds if the damage came from a child"
			self clipSubmorphs 
				ifTrue:[damageRect := aRectangle intersect: self clippingBounds]].
	owner ifNotNil: [owner invalidRect: damageRect from: self].
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> isRepaintBoundary [

	^ false
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> markNeedsRedraw [

	"assumption (for now): own repaint boundary == own texture"
	self isRepaintBoundary
		ifTrue: [ActiveWorld morphsToRedraw add: self]
		ifFalse: [self owner ifNotNil: [:o | o markNeedsRedraw]]
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> morph: aMorph changedIndexFrom: oldIndex to: newIndex [
	"Notify the receiver that aMorph was just moved from oldIndex to newIndex"
	self markNeedsRedraw
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> morphsToRedraw [

	^ (self valueOfProperty: #morphsToRedraw) ifNil: [
		self morphsToRedraw: WeakSet new]
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> morphsToRedraw: aSet [

	self
		setProperty: #morphsToRedraw
		toValue: aSet.
	^ aSet
]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Morph >> privateAddMorph: aMorph atIndex: index [

	| oldIndex myWorld itsWorld oldOwner |
	((index >= 1) and: [index <= (submorphs size + 1)])
		ifFalse: [^ self error: 'index out of range'].
	myWorld := self world.
	oldOwner := aMorph owner.
	(oldOwner == self and: [(oldIndex := submorphs indexOf: aMorph) > 0]) ifTrue:[
		"aMorph's position changes within in the submorph chain"
		oldIndex < index ifTrue:[
			"moving aMorph to back"
			submorphs replaceFrom: oldIndex to: index-2 with: submorphs startingAt: oldIndex+1.
			submorphs at: index-1 put: aMorph.
		] ifFalse:[
			"moving aMorph to front"
			oldIndex-1 to: index by: -1 do:[:i|
				submorphs at: i+1 put: (submorphs at: i)].
			submorphs at: index put: aMorph.
		].
		self morph: aMorph changedIndexFrom: oldIndex to: index
	] ifFalse:[
		"adding a new morph"
		oldOwner ifNotNil:[
			itsWorld := aMorph world.
			itsWorld ifNotNil: [self privateInvalidateMorph: aMorph].
			(itsWorld == myWorld) ifFalse: [aMorph outOfWorld: itsWorld].
			oldOwner privateRemove: aMorph.
			oldOwner removedMorph: aMorph.
		].
		aMorph privateOwner: self.
		submorphs := submorphs copyReplaceFrom: index to: index-1 with: (Array with: aMorph).
		(itsWorld == myWorld) ifFalse: [aMorph intoWorld: myWorld].
	].
	myWorld ifNotNil:[self privateInvalidateMorph: aMorph].
	self layoutChanged.
	oldOwner == self ifFalse: [
		self addedMorph: aMorph.
		aMorph noteNewOwner: self ].

]

{
	#category : #'*RenderThee-override',
	#timestamp : ''
}
Morph >> removedMorph: aMorph [
	"Notify the receiver that aMorph was just removed from its children"
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> updateLayer [

	self assert: self isRepaintBoundary.
	
	self groupLayer ifNotNil: [:layer | layer update]
]

{
	#category : #'*RenderThee',
	#timestamp : ''
}
Morph >> updateLayerTree [

	self morphsToRedraw do: [:morph | morph updateLayer].
	self morphsToRedraw: nil
]
