Class {
	#name : #RtDirectRenderer,
	#superclass : #RtMorphicRenderer,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #rendering,
	#timestamp : ''
}
RtDirectRenderer >> renderFrame [

	imageStore canvasDo: [:canvas |
		canvas fullDrawMorph: morph]
]
