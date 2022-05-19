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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:41'
}
PicPictureBegin >> endClass [

	^ PicPictureEnd
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
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:41'
}
PicPictureBegin >> isPictureBegin [

	^ true
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
	#'squeak_changestamp' : 'stlu 5/19/2022 15:12'
}
PicPictureBegin >> pool [

	^ PictureBeginPool
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:50'
}
PicPictureBegin >> translation [

	^ offset
]
