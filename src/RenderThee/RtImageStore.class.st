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

{ #category : #'as yet unclassified' }
RtImageStore class >> extent: aPoint withCanvasDo: aBlock [

	self defaultCanvasClass extent: aPoint store: self do: aBlock
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

	| canvas |
	canvas := self getCanvas.
	self prepareForDrawingOn: canvas during: [
		aBlock value: canvas]
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

	aBlock value
]
