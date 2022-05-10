"
I represent one or multiple graphical operations.
A `PicPictureCanvas` is typically used to create me.
"
Class {
	#name : #PicNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:03'
}
PicNode >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:38'
}
PicNode >> allChildrenDo: aBlock [

	"do nothing"
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:35'
}
PicNode >> allParents [

	^ Array streamContents: [:stream |
		self allParentsDo: [:node | stream nextPut: node]]
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:33'
}
PicNode >> allParentsDo: aBlock [

	parent ifNotNil: [
		parent withAllParentsDo: aBlock].
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 1/27/2022 12:38'
}
PicNode >> asForm [
	"Answer a Form containing the drawn representation of myself."
	| fc |
	fc := self getFormCanvas.
	self drawOn: fc.
	^ fc form
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:10'
}
PicNode >> childrenDo: aBlock [

	"do nothing"
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:44'
}
PicNode >> copyWithParents [

	| copiedNode |
	copiedNode := self copy.
	self allParentsDo: [:originalParent |
		(originalParent isTransformNode or: [originalParent isClipNode]) ifTrue: [
			| copiedParent |
			copiedParent := originalParent emptyCopy.
			copiedParent addChild: copiedNode.
			copiedNode := copiedParent]].
	^ copiedNode
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicNode >> do: aBlock [

	aBlock value: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicNode >> drawOn: aCanvas [
	"Replays represented graphical command(s) onto the given canvas."
	self subclassResponsibility
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:38'
}
PicNode >> estimatedBounds [
	"Returns a rectangle representing the maximum bounds I draw myself into, or nil if I am invisible."
	self subclassResponsibility
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 1/27/2022 13:00'
}
PicNode >> getFormCanvas [

	| bounds |
	bounds := self estimatedBounds.
	^ (FormCanvas extent: bounds extent)
		copyOffset: bounds topLeft negated
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:11'
}
PicNode >> hasPrimitiveNode [

	^ false
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 10/13/2021 14:01'
}
PicNode >> invalidate [

	parent ifNil: [^ self].
	parent invalidate.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:54'
}
PicNode >> isClipNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:37'
}
PicNode >> isMorphNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:59'
}
PicNode >> isRectangleNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:59'
}
PicNode >> isShapeNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:59'
}
PicNode >> isTransformNode [

	^ false
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:10'
}
PicNode >> isTranslucent [

	self subclassResponsibility.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:57'
}
PicNode >> isTransparent [
	"Returns true if applying me onto a canvas would result in a visible change."
	^ false
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicNode >> open [

	 ^ self asForm asMorph openInHand
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 17:28'
}
PicNode >> parent [

	^ parent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 17:28'
}
PicNode >> parent: aNode [

	parent := aNode.
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:07'
}
PicNode >> postCopy [

	super postCopy.
	parent := nil.
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:39'
}
PicNode >> withAllChildren [

	^ Array streamContents: [:stream |
		self withAllChildrenDo: [:child |
			stream nextPut: child]]
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:32'
}
PicNode >> withAllChildrenDo: aBlock [

	aBlock value: self.
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:32'
}
PicNode >> withAllParentsDo: aBlock [

	aBlock value: self.
	parent ifNotNil: [
		parent withAllParentsDo: aBlock].
]
