Class {
	#name : #PicPicture,
	#superclass : #PicGroup,
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
PicPicture >> acceptVisitor: aVisitor [

	aVisitor visitMorph: self.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:39'
}
PicPicture >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:39'
}
PicPicture >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:09'
}
PicPicture >> drawOn: aCanvas [

	aCanvas translateBy: offset during: [:canvas |
		self childrenDo: [:child |
			child drawOn: canvas]].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:24'
}
PicPicture >> initialize [

	super initialize.
	isValid := true.
	invalidationStamp := 0.
	offset := 0@0.
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 10/13/2021 14:03'
}
PicPicture >> invalidate [

	isValid ifFalse: [^ self].
	isValid := false.
	parent ifNil: [^ self].
	parent invalidate.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:17'
}
PicPicture >> invalidationStamp [

	^ invalidationStamp
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:17'
}
PicPicture >> invalidationStamp: anObject [

	invalidationStamp := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:37'
}
PicPicture >> isMorphNode [

	^ true
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 8/10/2021 18:07'
}
PicPicture >> isValid [

	^ isValid
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicPicture >> markInvalid [

	isValid := false.
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicPicture >> markValid [

	isValid := true.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:11'
}
PicPicture >> matrix [

	^ Matrix2x3 withOffset: offset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:47'
}
PicPicture >> morphDepth [

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
PicPicture >> offset [

	^ offset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:07'
}
PicPicture >> offset: anObject [

	offset := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:42'
}
PicPicture >> position [

	^ bounds topLeft
]
