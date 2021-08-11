Class {
	#name : #RtBatchingExample,
	#superclass : #RtMorphExample,
	#instVars : [
		'renderer'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 8/11/2021 15:01'
}
RtBatchingExample >> render [

	self updatePicture.
	renderer bounds: morph bounds.
	renderer render: picture.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatchingExample >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatchingExample >> renderer: anObject [

	renderer := anObject
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/21/2021 17:06'
}
RtBatchingExample >> setUp [

	renderer := RtBatchingRenderer new.
]
