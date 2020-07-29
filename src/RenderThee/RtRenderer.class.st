Class {
	#name : #RtRenderer,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtRenderer >> renderFrame [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
RtRenderer >> shouldClose [

	self subclassResponsibility
]
