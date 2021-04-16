"
I am a node in a tree.
I hold a collection of children which I composite to draw myself.
Subclasses of me modify properties of the subtree they represent.
"
Class {
	#name : #PicGroup,
	#superclass : #PicCommand,
	#instVars : [
		'children'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : 'stlu 8/21/2020 13:52'
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup class >> children: aCollection [

	^ self new
		children: aCollection;
		yourself
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:05'
}
PicGroup >> acceptVisitor: aVisitor [

	aVisitor visitGroup: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> addChild: aCommand [

	^ children add: aCommand
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> children [
	"A collection of PicCommand. Last child has front-most z-coordinate."
	^ children
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> children: aCollection [

	children := aCollection
]

{
	#category : #enumerating,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> do: aBlock [

	super do: aBlock.
	children do: [:child | child do: aBlock]
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> drawOn: aCanvas [

	children do: [:child |
		child drawOn: aCanvas]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> estimatedBounds [

	^ self estimatedChildrenBounds
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> estimatedChildrenBounds [

	^ Rectangle merging: (children collect: [:child | child estimatedBounds])
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> hasChildren [

	^ children notEmpty
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> initialize [

	super initialize.
	children := OrderedCollection new
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> isDrawing [

	^ children anySatisfy: [:child | child isDrawing]
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> isEmpty [

	^ children isEmpty
]

{
	#category : #copying,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> postCopy [

	super postCopy.
	children := children copy
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> removeAllChildren [

	^ children reset
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> removeLastChild [

	^ children removeLast
]

{
	#category : #transforming,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicGroup >> transformBy: aTransform [

	children := { (PicTransform matrix: aTransform) children: children }
]
