"
I am a node in a tree.
I hold a collection of children which I composite to draw myself.
Subclasses of me modify properties of the subtree they represent.
"
Class {
	#name : #PicGroup,
	#superclass : #PicNode,
	#instVars : [
		'children'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicGroup >> acceptVisitor: aVisitor [

	aVisitor visitGroup: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 17:30'
}
PicGroup >> addChild: aNode [

	children ifNil: [children := OrderedCollection new].
	"aNode should not have a (valid) parent already"
	aNode parent: self.
	^ children add: aNode
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:38'
}
PicGroup >> allChildrenDo: aBlock [

	self childrenDo: [:child |
		child withAllChildrenDo: aBlock].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:23'
}
PicGroup >> children [
	"A collection of PicPictureNode. Last child has front-most z-coordinate."
	^ children ifNil: [#()]
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:27'
}
PicGroup >> childrenDo: aBlock [

	children ifNil: [^ self].
	children do: [:child | aBlock value: child].
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:27'
}
PicGroup >> do: aBlock [

	super do: aBlock.
	self childrenDo: [:child | child do: aBlock].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:26'
}
PicGroup >> drawOn: aCanvas [

	self childrenDo: [:child |
		child drawOn: aCanvas]
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:11'
}
PicGroup >> emptyCopy [

	^ self shallowCopy setChildren: nil
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:44'
}
PicGroup >> estimatedBounds [

	| childrenBounds |
	childrenBounds := self estimatedChildrenBounds.
	childrenBounds ifEmpty: [^ nil].
	^ Rectangle merging: childrenBounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:26'
}
PicGroup >> estimatedChildrenBounds [

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
PicGroup >> hasChildren [

	^ children isNil or: [children notEmpty]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:24'
}
PicGroup >> hasPrimitiveNode [

	^ self children anySatisfy: [:child | child hasPrimitiveNode]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:24'
}
PicGroup >> isTranslucent [

	^ self children anySatisfy: [:each | each isTranslucent]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:24'
}
PicGroup >> isTransparent [

	^ self children allSatisfy: [:child | child isTransparent]
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:46'
}
PicGroup >> postCopy [

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
PicGroup >> removeAllChildren [

	children ifNotNil: [
		children reset].
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 1/24/2022 16:11'
}
PicGroup >> setChildren: anObject [

	children := anObject.
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 9/27/2021 16:18'
}
PicGroup >> transformBy: aTransform [

	self deprecated.
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:35'
}
PicGroup >> withAllChildrenDo: aBlock [

	self childrenDo: [:child |
		child withAllChildrenDo: aBlock].
	aBlock value: self.
]
