"
I represent one or multiple graphical operations.
A `PicPictureCanvas` is typically used to create me.
"
Class {
	#name : #PicPictureNode,
	#superclass : #Object,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:03'
}
PicPictureNode >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:40'
}
PicPictureNode >> asForm [
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
PicPictureNode >> do: aBlock [

	aBlock value: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPictureNode >> drawOn: aCanvas [
	"Replays represented graphical command(s) onto the given canvas."
	self subclassResponsibility
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:38'
}
PicPictureNode >> estimatedBounds [
	"Returns a rectangle representing the maximum bounds I draw myself into, or nil if I am invisible."
	self subclassResponsibility
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:54'
}
PicPictureNode >> isClipNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPictureNode >> isDrawing [
	"Returns true if drawing me onto a canvas results in a change of the underlying pixel store."
	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:59'
}
PicPictureNode >> isRectangleNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:59'
}
PicPictureNode >> isShapeNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:59'
}
PicPictureNode >> isTransformNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:10'
}
PicPictureNode >> isTranslucent [

	self subclassResponsibility.
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPictureNode >> open [

	 ^ self asForm asMorph openInHand
]
