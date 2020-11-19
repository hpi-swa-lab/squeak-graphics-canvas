"
A RtImageStore acts as a target for storing drawing operations in pixels.

Instance Variables

"
Class {
	#name : #RtImageStore,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtImageStore class >> defaultCanvasClass [

	^ self subclassResponsibility
]

{ #category : #'instance creation' }
RtImageStore class >> extent: aPoint [

	self subclassResponsibility
]

{ #category : #'instance creation' }
RtImageStore class >> form: aForm [

	self subclassResponsibility
]

{ #category : #accessing }
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]

{ #category : #drawing }
RtImageStore >> canvasDo: aBlock [

	self
		prepareForDrawingOn: self getCanvas
		during: [:c | aBlock value: c]
]

{ #category : #accessing }
RtImageStore >> extent [

	self subclassResponsibility
]

{ #category : #accessing }
RtImageStore >> extent: aPoint [

	self subclassResponsibility
]

{ #category : #private }
RtImageStore >> getCanvas [

	self subclassResponsibility
]

{ #category : #textures }
RtImageStore >> glTextureDo: aBlock [

	self subclassResponsibility
]

{ #category : #drawing }
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock cull: aCanvas
]
