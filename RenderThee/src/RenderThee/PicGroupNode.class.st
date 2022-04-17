"
I am a node in a tree.
I hold a collection of children which I composite to draw myself.
Subclasses of me modify properties of the subtree they represent.
"
Class {
	#name : #PicGroupNode,
	#superclass : #PicPictureNode,
	#instVars : [
		'children'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicGroupNode >> acceptVisitor: aVisitor [

	aVisitor visitGroup: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 17:30'
}
PicGroupNode >> addChild: aNode [

	children ifNil: [children := OrderedCollection new].
	"aNode should not have a (valid) parent already"
	aNode parent: self.
	^ children add: aNode
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:38'
}
PicGroupNode >> allChildrenDo: aBlock [

	self childrenDo: [:child |
		child withAllChildrenDo: aBlock].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:23'
}
PicGroupNode >> children [
	"A collection of PicPictureNode. Last child has front-most z-coordinate."
	^ children ifNil: [#()]
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:27'
}
PicGroupNode >> childrenDo: aBlock [

	children ifNil: [^ self].
	children do: [:child | aBlock value: child].
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:27'
}
PicGroupNode >> do: aBlock [

	super do: aBlock.
	self childrenDo: [:child | child do: aBlock].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:26'
}
PicGroupNode >> drawOn: aCanvas [

	self childrenDo: [:child |
		child drawOn: aCanvas]
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:11'
}
PicGroupNode >> emptyCopy [

	^ self shallowCopy setChildren: nil
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:44'
}
PicGroupNode >> estimatedBounds [

	| childrenBounds |
	childrenBounds := self estimatedChildrenBounds.
	childrenBounds ifEmpty: [^ nil].
	^ Rectangle merging: childrenBounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:26'
}
PicGroupNode >> estimatedChildrenBounds [

	self hasChildren ifFalse: [^ #()].
	^ Array streamContents: [:stream |
		self childrenDo: [:child |
			child estimatedBounds ifNotNil: [:childBounds |
				stream nextPut: childBounds]]]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:25'
}
PicGroupNode >> hasChildren [

	^ children isNil or: [children notEmpty]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:24'
}
PicGroupNode >> hasPrimitiveNode [

	^ self children anySatisfy: [:child | child hasPrimitiveNode]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:24'
}
PicGroupNode >> isTranslucent [

	^ self children anySatisfy: [:each | each isTranslucent]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:24'
}
PicGroupNode >> isTransparent [

	^ self children allSatisfy: [:child | child isTransparent]
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:46'
}
PicGroupNode >> postCopy [

	| oldChildren |
	super postCopy.
	oldChildren := children.
	children := nil.
	oldChildren ifNotNil: [
		oldChildren do: [:child |
			self addChild: child copy]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:19'
}
PicGroupNode >> removeAllChildren [

	children ifNotNil: [
		children reset].
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:11'
}
PicGroupNode >> setChildren: anObject [

	children := anObject.
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:18'
}
PicGroupNode >> transformBy: aTransform [

	self deprecated.
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:35'
}
PicGroupNode >> withAllChildrenDo: aBlock [

	self childrenDo: [:child |
		child withAllChildrenDo: aBlock].
	aBlock value: self.
]
