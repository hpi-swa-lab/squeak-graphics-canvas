Class {
	#name : #RtMorphicRenderer,
	#superclass : #Object,
	#instVars : [
		'morph',
		'imageStore'
	],
	#category : #'RenderThee-LayerTree'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> imageStore [

	^ imageStore
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> imageStore: anObject [

	imageStore := anObject
]

{
	#category : #'initialize-release',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	morph := aMorph.
	imageStore := anImageStore
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> morph [

	^ morph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> morph: anObject [

	morph := anObject
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtMorphicRenderer >> renderFrame [

	self subclassResponsibility
]
