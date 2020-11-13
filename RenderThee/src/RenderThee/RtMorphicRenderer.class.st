Class {
	#name : #RtMorphicRenderer,
	#superclass : #Object,
	#instVars : [
		'morph',
		'imageStore'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
RtMorphicRenderer >> imageStore [

	^ imageStore
]

{
	#category : #accessing,
	#timestamp : ''
}
RtMorphicRenderer >> imageStore: anObject [

	imageStore := anObject
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
RtMorphicRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	morph := aMorph.
	imageStore := anImageStore
]

{
	#category : #accessing,
	#timestamp : ''
}
RtMorphicRenderer >> morph [

	^ morph
]

{
	#category : #accessing,
	#timestamp : ''
}
RtMorphicRenderer >> morph: anObject [

	morph := anObject
]

{
	#category : #rendering,
	#timestamp : ''
}
RtMorphicRenderer >> renderFrame [

	self subclassResponsibility
]
