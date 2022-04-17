Class {
	#name : #PicMorphNode,
	#superclass : #PicGroupNode,
	#instVars : [
		'isValid',
		'bounds',
		'offset',
		'invalidationStamp'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:28'
}
PicMorphNode >> acceptVisitor: aVisitor [

	aVisitor visitMorph: self.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:39'
}
PicMorphNode >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:39'
}
PicMorphNode >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:09'
}
PicMorphNode >> drawOn: aCanvas [

	aCanvas translateBy: offset during: [:canvas |
		self childrenDo: [:child |
			child drawOn: canvas]].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:24'
}
PicMorphNode >> initialize [

	super initialize.
	isValid := true.
	invalidationStamp := 0.
	offset := 0@0.
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 10/13/2021 14:03'
}
PicMorphNode >> invalidate [

	isValid ifFalse: [^ self].
	isValid := false.
	parent ifNil: [^ self].
	parent invalidate.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:17'
}
PicMorphNode >> invalidationStamp [

	^ invalidationStamp
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:17'
}
PicMorphNode >> invalidationStamp: anObject [

	invalidationStamp := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:37'
}
PicMorphNode >> isMorphNode [

	^ true
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 8/10/2021 18:07'
}
PicMorphNode >> isValid [

	^ isValid
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicMorphNode >> markInvalid [

	isValid := false.
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicMorphNode >> markValid [

	isValid := true.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:11'
}
PicMorphNode >> matrix [

	^ Matrix2x3 withOffset: offset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:47'
}
PicMorphNode >> morphDepth [

	| counter |
	counter := 1.
	self allParentsDo: [:node |
		node isMorphNode ifTrue: [
			counter := counter + 1]].
	^ counter
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:07'
}
PicMorphNode >> offset [

	^ offset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:07'
}
PicMorphNode >> offset: anObject [

	offset := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:42'
}
PicMorphNode >> position [

	^ bounds topLeft
]
