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
	#category : #'RenderThee-Pictures'
}

{ #category : #'instance creation' }
PicGroup class >> children: aCollection [

	^ self new
		children: aCollection;
		yourself
]

{ #category : #accessing }
PicGroup >> addChild: aCommand [

	^ children add: aCommand
]

{ #category : #accessing }
PicGroup >> children [
	"A collection of PicCommand. Last child has front-most z-coordinate."
	^ children
]

{ #category : #accessing }
PicGroup >> children: aCollection [

	children := aCollection
]

{ #category : #enumerating }
PicGroup >> do: aBlock [

	super do: aBlock.
	children do: [:child | child do: aBlock]
]

{ #category : #drawing }
PicGroup >> drawOn: aCanvas [

	children do: [:child |
		child drawOn: aCanvas]
]

{ #category : #accessing }
PicGroup >> estimatedBounds [

	^ self estimatedChildrenBounds
]

{ #category : #accessing }
PicGroup >> estimatedChildrenBounds [

	^ Rectangle merging: (children collect: [:child | child estimatedBounds])
]

{ #category : #testing }
PicGroup >> hasChildren [

	^ children notEmpty
]

{ #category : #initialization }
PicGroup >> initialize [

	super initialize.
	children := OrderedCollection new
]

{ #category : #testing }
PicGroup >> isDrawing [

	^ children anySatisfy: [:child | child isDrawing]
]

{ #category : #testing }
PicGroup >> isEmpty [

	^ children isEmpty
]

{ #category : #copying }
PicGroup >> postCopy [

	super postCopy.
	children := children copy
]

{ #category : #accessing }
PicGroup >> removeAllChildren [

	^ children reset
]

{ #category : #accessing }
PicGroup >> removeLastChild [

	^ children removeLast
]

{ #category : #transforming }
PicGroup >> transformBy: aTransform [

	children := { (PicTransform matrix: aTransform) children: children }
]
