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
	#'squeak_changestamp' : 'stlu 8/12/2021 13:40'
}
PicMorphNode >> initialize [

	super initialize.
	isValid := true.
	bounds := 0@0 corner: 0@0.
	invalidationStamp := 0.
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
	#category : #validity,
	#'squeak_changestamp' : 'stlu 8/10/2021 18:07'
}
PicMorphNode >> isValid [

	^ isValid
]

{
	#category : #validity,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicMorphNode >> markInvalid [

	isValid := false.
]

{
	#category : #validity,
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
