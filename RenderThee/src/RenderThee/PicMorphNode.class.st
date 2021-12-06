Class {
	#name : #PicMorphNode,
	#superclass : #PicGroupNode,
	#instVars : [
		'isValid',
		'bounds',
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
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:32'
}
PicMorphNode >> initialize [

	super initialize.
	isValid := true.
	invalidationStamp := 0.
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
	#'squeak_changestamp' : 'stlu 8/12/2021 13:42'
}
PicMorphNode >> position [

	^ bounds topLeft
]