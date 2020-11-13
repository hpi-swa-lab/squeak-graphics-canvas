"
A RtImageStore acts as a target for storing drawing operations in pixels.

Instance Variables

"
Class {
	#name : #RtImageStore,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
RtImageStore class >> defaultCanvasClass [

	^ self subclassResponsibility
]

{
	#category : #'instance creation',
	#timestamp : ''
}
RtImageStore class >> extent: aPoint [

	self subclassResponsibility
]

{
	#category : #'instance creation',
	#timestamp : ''
}
RtImageStore class >> form: aForm [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]

{
	#category : #drawing,
	#timestamp : ''
}
RtImageStore >> canvasDo: aBlock [

	self
		prepareForDrawingOn: self getCanvas
		during: [:c | aBlock value: c]
]

{
	#category : #accessing,
	#timestamp : ''
}
RtImageStore >> extent [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
RtImageStore >> extent: aPoint [

	self subclassResponsibility
]

{
	#category : #private,
	#timestamp : ''
}
RtImageStore >> getCanvas [

	self subclassResponsibility
]

{
	#category : #textures,
	#timestamp : ''
}
RtImageStore >> glTextureDo: aBlock [

	self subclassResponsibility
]

{
	#category : #drawing,
	#timestamp : ''
}
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock cull: aCanvas
]
