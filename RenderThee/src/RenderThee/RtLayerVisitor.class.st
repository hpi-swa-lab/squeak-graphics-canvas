Class {
	#name : #RtLayerVisitor,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #visiting }
RtLayerVisitor >> visit: anObject [

	^ anObject accept: self
]

{ #category : #visiting }
RtLayerVisitor >> visitDrawLayer: aLayer [

	
]

{ #category : #visiting }
RtLayerVisitor >> visitGroupLayer: aLayer [

	aLayer children do: [:child |
		child accept: self]
]
