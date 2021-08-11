Class {
	#name : #PicMorph,
	#superclass : #PicGroup,
	#instVars : [
		'isValid',
		'position'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/11/2021 13:48'
}
PicMorph >> initialize [

	super initialize.
	isValid := true.
	position := 0@0.
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
	#'squeak_changestamp' : 'stlu 8/11/2021 13:53'
}
PicMorph >> position [

	^ position
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 13:53'
}
PicMorph >> position: anObject [

	position := anObject.
]
