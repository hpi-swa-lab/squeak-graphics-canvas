Extension { #name : #Morph }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:53'
}
Morph >> getPicture [

	^ (PicCanvas new fullDraw: self; yourself) getPicture
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Morph >> groupLayer [

	^ self valueOfProperty: #groupLayer
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Morph >> groupLayer: aGroupLayer [

	^ self
		setProperty: #groupLayer
		toValue: aGroupLayer
]

{
	#category : #'*RenderThee-override',
	#'squeak_changestamp' : 'stlu 8/11/2021 13:40'
}
Morph >> invalidRect: aRectangle from: aMorph [
	| damageRect |
	(self valueOfProperty: #picture "fail-safe") ifNotNil: [:picture | picture markInvalid].
	self visible ifFalse: [ ^self ].
	aRectangle hasPositiveExtent ifFalse: [ ^self ].
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
	#'squeak_changestamp' : 'stlu 11/2/2020 13:13'
}
Morph >> morphsToRedraw [

	^ (self valueOfProperty: #morphsToRedraw) ifNil: [
		self morphsToRedraw: WeakSet new]
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Morph >> morphsToRedraw: aSet [

	self
		setProperty: #morphsToRedraw
		toValue: aSet.
	^ aSet
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:26'
}
Morph >> picture [

	^ self valueOfProperty: #picture
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:25'
}
Morph >> picture: aPicture [

	self
		setProperty: #picture
		toValue: aPicture.
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Morph >> updateLayer [

	self assert: self isRepaintBoundary.
	
	self groupLayer ifNotNil: [:layer | layer update]
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Morph >> updateLayerTree [

	self morphsToRedraw do: [:morph | morph updateLayer].
	self morphsToRedraw: nil
]
