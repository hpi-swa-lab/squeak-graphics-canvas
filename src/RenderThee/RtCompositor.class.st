Class {
	#name : #RtCompositor,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #visiting }
RtCompositor >> visitDrawLayer: aLayer [

	self subclassResponsibility
]

{ #category : #visiting }
RtCompositor >> visitGroupLayer: aLayer [

	self subclassResponsibility
]
