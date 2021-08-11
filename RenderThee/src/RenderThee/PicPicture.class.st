"
I represent one or multiple graphical operations.
A `PicPictureCanvas` is typically used to create me.
"
Class {
	#name : #PicPicture,
	#superclass : #Object,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:03'
}
PicPicture >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:40'
}
PicPicture >> asForm [
	"Answer a Form containing the drawn representation of myself."
	| fc bounds |
	bounds := self estimatedBounds.
	bounds ifNil: [^ Form extent: 0@0 depth: 32].
	fc := FormCanvas extent: bounds extent.
	fc translateBy: bounds topLeft negated during: [:c | self drawOn: c].
	^ fc form
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPicture >> do: aBlock [

	aBlock value: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPicture >> drawOn: aCanvas [
	"Replays represented graphical command(s) onto the given canvas."
	self subclassResponsibility
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:38'
}
PicPicture >> estimatedBounds [
	"Returns a rectangle representing the maximum bounds I draw myself into, or nil if I am invisible."
	self subclassResponsibility
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:48'
}
PicPicture >> isClip [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPicture >> isDrawing [
	"Returns true if drawing me onto a canvas results in a change of the underlying pixel store."
	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/13/2021 12:27'
}
PicPicture >> isRectangle [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:48'
}
PicPicture >> isTransform [

	^ false
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPicture >> open [

	 ^ self asForm asMorph openInHand
]
