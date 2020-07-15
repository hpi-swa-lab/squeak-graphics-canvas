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
RtImageStore >> displayTransform [
	" a transform that translates this store's coordinate system to have 0,0 in the top left "

	^ Matrix4x4 identity
]

{ #category : #accessing }
RtImageStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aBlock value
]
