Class {
	#name : #RtMorphicRenderer,
	#superclass : #Object,
	#instVars : [
		'morph',
		'imageStore'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtMorphicRenderer >> imageStore [

	^ imageStore
]

{ #category : #accessing }
RtMorphicRenderer >> imageStore: anObject [

	imageStore := anObject
]

{ #category : #'initialize-release' }
RtMorphicRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	morph := aMorph.
	imageStore := anImageStore
]

{ #category : #accessing }
RtMorphicRenderer >> morph [

	^ morph
]

{ #category : #accessing }
RtMorphicRenderer >> morph: anObject [

	morph := anObject
]

{ #category : #rendering }
RtMorphicRenderer >> renderFrame [

	self subclassResponsibility
]
