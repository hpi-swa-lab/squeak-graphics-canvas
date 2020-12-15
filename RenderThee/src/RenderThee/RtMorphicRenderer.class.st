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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> imageStore [

	^ imageStore
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> imageStore: anObject [

	imageStore := anObject
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	morph := aMorph.
	imageStore := anImageStore
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> morph [

	^ morph
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> morph: anObject [

	morph := anObject
]

{
	#category : #rendering,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> renderFrame [

	self subclassResponsibility
]
