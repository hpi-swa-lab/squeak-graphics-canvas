"
I represent one or multiple graphical operations.
A `PicPictureCanvas` is typically used to create me.
"
Class {
	#name : #PicCommand,
	#superclass : #Object,
	#category : #'RenderThee-Pictures',
	#commentStamp : 'stlu 8/21/2020 13:54'
}

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:03'
}
PicCommand >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{
	#category : #converting,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicCommand >> asForm [
	"Answer a Form containing the drawn representation of myself."
	| fc bounds |
	bounds := self estimatedBounds.
	fc := FormCanvas extent: bounds extent.
	fc translateBy: bounds topLeft negated during: [:c | self drawOn: c].
	^ fc form
]

{
	#category : #enumerating,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicCommand >> do: aBlock [

	aBlock value: self
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicCommand >> drawOn: aCanvas [
	"Replays represented graphical command(s) onto the given canvas."
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicCommand >> estimatedBounds [
	"Returns a rectangle representing the maximum bounds I draw myself into."
	self subclassResponsibility
]

{
	#category : #testing,
	#timestamp : 'stlu 3/18/2021 13:48'
}
PicCommand >> isClip [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicCommand >> isDrawing [
	"Returns true if drawing me onto a canvas results in a change of the underlying pixel store."
	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 3/13/2021 12:27'
}
PicCommand >> isRectangle [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 3/18/2021 13:48'
}
PicCommand >> isTransform [

	^ false
]

{
	#category : #debugging,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicCommand >> open [

	 ^ self asForm asMorph openInHand
]
