Class {
	#name : #PicMorph,
	#superclass : #PicGroup,
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
PicMorph >> acceptVisitor: aVisitor [

	aVisitor visitMorph: self.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:39'
}
PicMorph >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:39'
}
PicMorph >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:40'
}
PicMorph >> initialize [

	super initialize.
	isValid := true.
	bounds := 0@0 corner: 0@0.
	invalidationStamp := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:17'
}
PicMorph >> invalidationStamp [

	^ invalidationStamp
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:17'
}
PicMorph >> invalidationStamp: anObject [

	invalidationStamp := anObject.
]

{
	#category : #validity,
	#'squeak_changestamp' : 'stlu 8/10/2021 18:07'
}
PicMorph >> isValid [

	^ isValid
]

{
	#category : #validity,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicMorph >> markInvalid [

	isValid := false.
]

{
	#category : #validity,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:19'
}
PicMorph >> markValid [

	isValid := true.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:42'
}
PicMorph >> position [

	^ bounds topLeft
]
