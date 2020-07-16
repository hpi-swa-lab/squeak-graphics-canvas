Class {
	#name : #RtImageStore,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]

{ #category : #accessing }
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock value
]
