"
A RtImageStore acts as a target for storing drawing operations in pixels.

Instance Variables

"
Class {
	#name : #RtImageStore,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore class >> defaultCanvasClass [

	^ self subclassResponsibility
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore class >> extent: aPoint [

	self subclassResponsibility
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore class >> form: aForm [

	self subclassResponsibility
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> canvasDo: aBlock [

	self
		prepareForDrawingOn: self getCanvas
		during: [:c | aBlock value: c]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> extent [

	self subclassResponsibility
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> extent: aPoint [

	self subclassResponsibility
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> getCanvas [

	self subclassResponsibility
]

{
	#category : #textures,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> glTextureDo: aBlock [

	self subclassResponsibility
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock cull: aCanvas
]
