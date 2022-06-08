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
	#category : #logging,
	#'squeak_changestamp' : 'stlu 6/7/2022 15:30'
}
RtBatchingExample >> printWindowTitleOn: aStream [

	super printWindowTitleOn: aStream.
	(renderer notNil and: [renderer numBatches notNil]) ifTrue: [
		aStream nextPutAll: ' | B: '.
		aStream store: renderer numBatches].
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/7/2022 11:04'
}
RtBatchingExample >> render [

	| batchingStart |
	self updateMorph.
	renderer bounds: world bounds.
	renderer currentFrame: numFrames.
	renderer reset.
	renderer clear.
	
	"benchNextRender
		ifTrue: [
			benchNextRender := false.
			(renderer renderBenched: picture) explore]"
	
	batchingStart := Time utcMicrosecondClock.
	renderer visitAll: picture beginNode.
	batchingTimes add: Time utcMicrosecondClock - batchingStart.
	
	renderer draw.
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
	#'squeak_changestamp' : 'stlu 5/10/2022 20:36'
}
RtBatchingExample >> setUp [

	renderer := RtBatchRenderer bounds: world bounds.
	batchingTimes := RingBuffer new: 120.
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:27'
}
RtBatchingExample >> triggerDebugAction [

	benchNextRender := true.
]
