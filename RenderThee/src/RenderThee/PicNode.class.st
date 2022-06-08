"
I represent one or multiple graphical operations.
A `PicPictureCanvas` is typically used to create me.
"
Class {
	#name : #PicNode,
	#superclass : #Object,
	#instVars : [
		'previous',
		'next',
		'cache'
	],
	#pools : [
		'PicConstants'
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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/2/2022 12:54'
}
PicNode >> cache [

	^ cache
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/2/2022 12:54'
}
PicNode >> cache: anObject [

	cache := anObject.
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
	#'squeak_changestamp' : 'stlu 5/16/2022 15:23'
}
PicNode >> first [

	| node |
	node := self.
	[nil ~~ node previous] whileTrue: [
		node := node previous].
	^ node
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
	#'squeak_changestamp' : 'stlu 5/19/2022 13:42'
}
PicNode >> isPictureBegin [

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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 15:25'
}
PicNode >> last [

	| node |
	node := self.
	[nil ~~ node next] whileTrue: [
		node := node next].
	^ node
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/12/2022 11:11'
}
PicNode >> next [

	^ next
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/12/2022 11:11'
}
PicNode >> next: aNode [

	next := aNode.
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
	#'squeak_changestamp' : 'stlu 5/12/2022 11:11'
}
PicNode >> previous [

	^ previous
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/12/2022 11:11'
}
PicNode >> previous: aNode [

	previous := aNode.
]

{
	#category : #reclaiming,
	#'squeak_changestamp' : 'stlu 6/2/2022 12:57'
}
PicNode >> reclaim [

	cache ifNotNil: [
		cache invalidate.
		cache := nil].
	self unlink.
]

{
	#category : #linking,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:39'
}
PicNode >> unlink [

	next ifNotNil: [
		next previous: nil.
		next := nil].
	previous ifNotNil: [
		previous next: nil.
		previous := nil].
]

{
	#category : #linking,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:03'
}
PicNode >> unlinkNext [

	next ifNotNil: [
		next previous: nil.
		next := nil].
]

{
	#category : #linking,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:03'
}
PicNode >> unlinkPrevious [

	previous ifNotNil: [
		previous next: nil.
		previous := nil].
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 5/17/2022 12:01'
}
PicNode >> validate [

	PicValidator new visitAll: self.
]
