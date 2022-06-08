Class {
	#name : #PicPictureBegin,
	#superclass : #PicGroupBegin,
	#instVars : [
		'picture',
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
	#'squeak_changestamp' : 'stlu 6/2/2022 13:11'
}
PicPictureBegin >> initialize [

	super initialize.
	self reset.
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
	#'squeak_changestamp' : 'stlu 6/2/2022 13:12'
}
PicPictureBegin >> picture [

	^ picture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/2/2022 13:12'
}
PicPictureBegin >> picture: anObject [

	picture := anObject.
	picture := nil.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 15:12'
}
PicPictureBegin >> pool [

	^ PictureBeginPool
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/2/2022 13:11'
}
PicPictureBegin >> reset [

	offset := ZeroPointInt.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:50'
}
PicPictureBegin >> translation [

	^ offset
]
