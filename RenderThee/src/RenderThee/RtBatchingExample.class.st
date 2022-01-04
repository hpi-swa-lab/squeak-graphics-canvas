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
	#'squeak_changestamp' : 'stlu 1/3/2022 17:51'
}
RtBatchingExample >> render [

	self updateMorph.
	renderer currentFrame: numFrames.
	renderer bounds: world bounds.
	shouldShowDamageRectangles ifTrue: [
		self damageRecorder doFullRepaint].
	renderer
		render: picture
		damage: self damageRectangles.
	self damageRecorder reset.
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
	#'squeak_changestamp' : 'stlu 12/10/2021 16:12'
}
RtBatchingExample >> setUp [

	renderer := RtBatchingRenderer bounds: world bounds.
]
