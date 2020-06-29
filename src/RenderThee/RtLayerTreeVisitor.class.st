Class {
	#name : #RtLayerTreeVisitor,
	#superclass : #Object,
	#category : 'RenderThee-LayerTree'
}

{ #category : #visiting }
RtLayerTreeVisitor >> visitDrawLayer: aLayer [

	self subclassResponsibility
]

{ #category : #visiting }
RtLayerTreeVisitor >> visitGroupLayer: aLayer [

	self subclassResponsibility
]
