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
	#timestamp : ''
}
PicGroup class >> children: aCollection [

	^ self new
		children: aCollection;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> addChild: aCommand [

	^ children add: aCommand
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> children [
	"A collection of PicCommand. Last child has front-most z-coordinate."
	^ children
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> children: aCollection [

	children := aCollection
]

{
	#category : #enumerating,
	#timestamp : ''
}
PicGroup >> do: aBlock [

	super do: aBlock.
	children do: [:child | child do: aBlock]
]

{
	#category : #drawing,
	#timestamp : ''
}
PicGroup >> drawOn: aCanvas [

	children do: [:child |
		child drawOn: aCanvas]
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> estimatedBounds [

	^ self estimatedChildrenBounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> estimatedChildrenBounds [

	^ Rectangle merging: (children collect: [:child | child estimatedBounds])
]

{
	#category : #testing,
	#timestamp : ''
}
PicGroup >> hasChildren [

	^ children notEmpty
]

{
	#category : #initialization,
	#timestamp : ''
}
PicGroup >> initialize [

	super initialize.
	children := OrderedCollection new
]

{
	#category : #testing,
	#timestamp : ''
}
PicGroup >> isDrawing [

	^ children anySatisfy: [:child | child isDrawing]
]

{
	#category : #testing,
	#timestamp : ''
}
PicGroup >> isEmpty [

	^ children isEmpty
]

{
	#category : #copying,
	#timestamp : ''
}
PicGroup >> postCopy [

	super postCopy.
	children := children copy
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> removeAllChildren [

	^ children reset
]

{
	#category : #accessing,
	#timestamp : ''
}
PicGroup >> removeLastChild [

	^ children removeLast
]

{
	#category : #transforming,
	#timestamp : ''
}
PicGroup >> transformBy: aTransform [

	children := { (PicTransform matrix: aTransform) children: children }
]
