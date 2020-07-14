Class {
	#name : #RtImageStore,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtImageStore >> boundingBox [

	^ 0 @ 0 extent: self extent
]
