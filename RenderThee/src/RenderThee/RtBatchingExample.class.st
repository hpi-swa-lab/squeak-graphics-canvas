Class {
	#name : #RtBatchingExample,
	#superclass : #RtMorphExample,
	#instVars : [
		'batchingTimes',
		'renderer',
		'benchNextRender'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:26'
}
RtBatchingExample >> initialize [

	super initialize.
	benchNextRender := false.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:30'
}
RtBatchingExample >> render [

	| batchingStart |
	self updateMorph.
	renderer bounds: world bounds.
	batchingStart := Time utcMicrosecondClock.
	benchNextRender
		ifTrue: [
			benchNextRender := false.
			(renderer renderBenched: picture) explore]
		ifFalse: [renderer render: picture].
	batchingTimes add: Time utcMicrosecondClock - batchingStart.
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
	#category : #logging,
	#'squeak_changestamp' : 'stlu 5/3/2022 14:04'
}
RtBatchingExample >> saveLogsOn: aStream [

	aStream nextPutAll: 'cycle,type,time'.
	aStream crlf.
	frameTimes size to: 1 by: -1 do: [:cycle || x gc | 
		x := frameTimes size - cycle + 1.
		gc := (gcHistory at: cycle * 2) - (gcHistory at: cycle * 2 + 2).
		{
			'"Frame Time"'. [(frameTimes at: cycle) / 1e3 - gc printOn: aStream showingDecimalPlaces: 3.].
			'Batching'. [(batchingTimes at: cycle) / 1e3 printOn: aStream showingDecimalPlaces: 3.].
			'Picture'. [(pictureUpdateTimes at: cycle) / 1e3 printOn: aStream showingDecimalPlaces: 3.].
			'GPU'. [(gpuTimes at: cycle) / 1e6 printOn: aStream showingDecimalPlaces: 3.].
			'GC'. [gc printOn: aStream.].
		} groupsOf: 2 atATimeDo: [:type :block |
			aStream
				print: x;
				nextPut: $,;
				nextPutAll: type;
				nextPut: $,.
			block value.
			aStream crlf]].
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/3/2022 13:49'
}
RtBatchingExample >> setUp [

	renderer := RtFrameBuilder bounds: world bounds.
	batchingTimes := RingBuffer new: 120.
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:27'
}
RtBatchingExample >> triggerDebugAction [

	benchNextRender := true.
]
