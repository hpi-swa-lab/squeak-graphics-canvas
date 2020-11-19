"
I represent one or multiple graphical operations.
A `PicPictureCanvas` is typically used to create me.
"
Class {
	#name : #PicCommand,
	#superclass : #Object,
	#category : #'RenderThee-Pictures'
}

{ #category : #converting }
PicCommand >> asForm [
	"Answer a Form containing the drawn representation of myself."
	| fc bounds |
	bounds := self estimatedBounds.
	fc := FormCanvas extent: bounds extent.
	fc translateBy: bounds topLeft negated during: [:c | self drawOn: c].
	^ fc form
]

{ #category : #enumerating }
PicCommand >> do: aBlock [

	aBlock value: self
]

{ #category : #drawing }
PicCommand >> drawOn: aCanvas [
	"Replays represented graphical command(s) onto the given canvas."
	self subclassResponsibility
]

{ #category : #accessing }
PicCommand >> estimatedBounds [
	"Returns a rectangle representing the maximum bounds I draw myself into."
	self subclassResponsibility
]

{ #category : #testing }
PicCommand >> isDrawing [
	"Returns true if drawing me onto a canvas results in a change of the underlying pixel store."
	^ false
]

{ #category : #debugging }
PicCommand >> open [

	 ^ self asForm asMorph openInHand
]
