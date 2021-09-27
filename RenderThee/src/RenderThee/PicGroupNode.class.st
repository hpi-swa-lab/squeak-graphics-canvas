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
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode class >> children: aCollection [

	^ self new
		children: aCollection;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicGroupNode >> acceptVisitor: aVisitor [

	aVisitor visitGroup: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> addChild: aCommand [

	^ children add: aCommand
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> children [
	"A collection of PicCommand. Last child has front-most z-coordinate."
	^ children
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> children: aCollection [

	children := aCollection
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> do: aBlock [

	super do: aBlock.
	children do: [:child | child do: aBlock]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> drawOn: aCanvas [

	children do: [:child |
		child drawOn: aCanvas]
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
	#'squeak_changestamp' : 'stlu 8/11/2021 11:43'
}
PicGroupNode >> estimatedChildrenBounds [

	children ifEmpty: [^ #()].
	^ Array streamContents: [:stream |
		children do: [:child |
			child estimatedBounds ifNotNil: [:childBounds |
				stream nextPut: childBounds]]]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> hasChildren [

	^ children notEmpty
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:11'
}
PicGroupNode >> hasPrimitiveNode [

	^ children anySatisfy: [:child | child hasPrimitiveNode]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/10/2021 18:07'
}
PicGroupNode >> initialize [

	super initialize.
	children := OrderedCollection new.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> isEmpty [

	^ children isEmpty
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:16'
}
PicGroupNode >> isTranslucent [

	^ children anySatisfy: [:each | each isTranslucent]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:03'
}
PicGroupNode >> isTransparent [

	^ children allSatisfy: [:child | child isTransparent]
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> postCopy [

	super postCopy.
	children := children copy
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> removeAllChildren [

	^ children reset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroupNode >> removeLastChild [

	^ children removeLast
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 9/27/2021 12:34'
}
PicGroupNode >> transformBy: aTransform [

	children := { (PicTransformNode matrix: aTransform) children: children }.
]
