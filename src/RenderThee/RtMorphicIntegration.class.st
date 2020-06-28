"
Activates / deactivates behavior that modifies existing Morphic code paths.
"
Class {
	#name : #RtMorphicIntegration,
	#superclass : #DynamicVariable,
	#category : 'RenderThee-Core'
}

{ #category : #accessing }
RtMorphicIntegration class >> default [

	^ false
]

{ #category : #accessing }
RtMorphicIntegration class >> during: aBlock [

	^ self value: true during: aBlock
]
