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
	#category : #converting,
	#timestamp : ''
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
	#timestamp : ''
}
PicCommand >> do: aBlock [

	aBlock value: self
]

{
	#category : #drawing,
	#timestamp : ''
}
PicCommand >> drawOn: aCanvas [
	"Replays represented graphical command(s) onto the given canvas."
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
PicCommand >> estimatedBounds [
	"Returns a rectangle representing the maximum bounds I draw myself into."
	self subclassResponsibility
]

{
	#category : #testing,
	#timestamp : ''
}
PicCommand >> isDrawing [
	"Returns true if drawing me onto a canvas results in a change of the underlying pixel store."
	^ false
]

{
	#category : #debugging,
	#timestamp : ''
}
PicCommand >> open [

	 ^ self asForm asMorph openInHand
]
