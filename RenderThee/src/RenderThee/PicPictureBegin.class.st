Class {
	#name : #PicPictureBegin,
	#superclass : #PicGroupBegin,
	#instVars : [
		'offset'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:03'
}
PicPictureBegin >> acceptVisitor: aVisitor [

	^ aVisitor visitPictureBegin: self
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:45'
}
PicPictureBegin >> initialize [

	super initialize.
	offset := ZeroPointInt.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:45'
}
PicPictureBegin >> offset [

	^ offset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:45'
}
PicPictureBegin >> offset: anObject [

	offset := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:50'
}
PicPictureBegin >> translation [

	^ offset
]
