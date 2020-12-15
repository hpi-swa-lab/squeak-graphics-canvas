Class {
	#name : #RtDirectRenderer,
	#superclass : #RtMorphicRenderer,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #rendering,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDirectRenderer >> renderFrame [

	imageStore canvasDo: [:canvas |
		canvas fullDrawMorph: morph]
]
