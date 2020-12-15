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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore class >> defaultCanvasClass [

	^ self subclassResponsibility
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore class >> extent: aPoint [

	self subclassResponsibility
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore class >> form: aForm [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> canvasDo: aBlock [

	self
		prepareForDrawingOn: self getCanvas
		during: [:c | aBlock value: c]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> extent [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> extent: aPoint [

	self subclassResponsibility
]

{
	#category : #private,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> getCanvas [

	self subclassResponsibility
]

{
	#category : #textures,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> glTextureDo: aBlock [

	self subclassResponsibility
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock cull: aCanvas
]
