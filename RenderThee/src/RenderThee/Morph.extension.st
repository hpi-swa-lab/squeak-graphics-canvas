Extension { #name : #Morph }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:57'
}
Morph >> createPicture [

	self allMorphsDo: [:each | each picture: nil].
	PicRecordingCanvas new fullDrawMorph: self.
	^ self picture
]

{
	#category : #'*RenderThee-override',
	#'squeak_changestamp' : 'stlu 5/17/2022 11:03'
}
Morph >> invalidRect: aRectangle from: aMorph [
	| damageRect |
	self visible ifFalse: [ ^self ].
	aRectangle hasPositiveExtent ifFalse: [ ^self ].
	"=== begin override ==="
	self picture ifNotNil: [:picture | picture needsUpdating: true].
	"=== end override ==="
	damageRect := aRectangle.
	aMorph == self ifFalse: [
		"Clip to receiver's clipping bounds if the damage came from a child"
		self clipSubmorphs ifTrue:[
			damageRect := aRectangle intersect: self clippingBounds]].
	owner ifNotNil: [owner invalidRect: damageRect from: self].
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Morph >> isRepaintBoundary [

	^ false
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:38'
}
Morph >> picture [

	^ extension ifNotNil: [
		extension picture]
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:41'
}
Morph >> picture: aPicture [

	(extension isNil and: [aPicture isNil]) ifTrue: [^ self].
	self assureExtension picture: aPicture.
]
