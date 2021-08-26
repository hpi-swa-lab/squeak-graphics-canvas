"
I am a node in a tree.
I hold a collection of children which I composite to draw myself.
Subclasses of me modify properties of the subtree they represent.
"
Class {
	#name : #PicGroup,
	#superclass : #PicPicture,
	#instVars : [
		'children'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup class >> children: aCollection [

	^ self new
		children: aCollection;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicGroup >> acceptVisitor: aVisitor [

	aVisitor visitGroup: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> addChild: aCommand [

	^ children add: aCommand
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> children [
	"A collection of PicCommand. Last child has front-most z-coordinate."
	^ children
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> children: aCollection [

	children := aCollection
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> do: aBlock [

	super do: aBlock.
	children do: [:child | child do: aBlock]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> drawOn: aCanvas [

	children do: [:child |
		child drawOn: aCanvas]
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
	#'squeak_changestamp' : 'stlu 8/11/2021 11:43'
}
PicGroup >> estimatedChildrenBounds [

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
PicGroup >> hasChildren [

	^ children notEmpty
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/10/2021 18:07'
}
PicGroup >> initialize [

	super initialize.
	children := OrderedCollection new.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> isDrawing [

	^ children anySatisfy: [:child | child isDrawing]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> isEmpty [

	^ children isEmpty
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:16'
}
PicGroup >> isTranslucent [

	^ children anySatisfy: [:each | each isTranslucent]
]

{
	#category : #copying,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> postCopy [

	super postCopy.
	children := children copy
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> removeAllChildren [

	^ children reset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> removeLastChild [

	^ children removeLast
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicGroup >> transformBy: aTransform [

	children := { (PicTransform matrix: aTransform) children: children }
]
