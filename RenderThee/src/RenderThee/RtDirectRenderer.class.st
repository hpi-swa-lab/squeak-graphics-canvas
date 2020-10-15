Class {
	#name : #RtDirectRenderer,
	#superclass : #RtMorphicRenderer,
	#category : #'RenderThee-LayerTree'
}

{ #category : #rendering }
RtDirectRenderer >> renderFrame [

	imageStore canvasDo: [:canvas |
		canvas fullDrawMorph: morph]
]
