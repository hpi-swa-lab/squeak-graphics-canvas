Class {
	#name : #RtImageStore,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtImageStore class >> defaultCanvasClass [

	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
RtImageStore class >> extent: aPoint withCanvasDo: aBlock [

	self defaultCanvasClass extent: aPoint store: self do: aBlock
]

{ #category : #accessing }
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]

{ #category : #accessing }
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock value
]
