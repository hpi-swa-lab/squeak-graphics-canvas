Class {
	#name : #RtBatchingExample,
	#superclass : #RtMorphExample,
	#instVars : [
		'batchingTimes',
		'renderer',
		'debugNextCycle'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/16/2022 14:26'
}
RtBatchingExample >> initialize [

	super initialize.
	debugNextCycle := false.
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 6/21/2022 13:49'
}
RtBatchingExample >> printWindowTitleOn: aStream [

	super printWindowTitleOn: aStream.
	(batchingTimes notNil and: [batchingTimes notEmpty]) ifTrue: [
		aStream nextPutAll: ' | BT: '.
		batchingTimes average / 1e3 printOn: aStream showingDecimalPlaces: 2.
		aStream nextPutAll: 'ms'].
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
	#'squeak_changestamp' : 'stlu 6/27/2022 15:11'
}
RtBatchingExample >> saveLogsOn: aStream [

	aStream nextPutAll: 'cycle,type,time'.
	aStream crlf.
	frameTimes size to: 1 by: -1 do: [:cycle || x gc ft st bt pt | 
		x := frameTimes size - cycle + 1.
		ft := (frameTimes at: cycle) / 1e3.
		st := (stepTimes at: cycle) / 1e3.
		bt := (batchingTimes at: cycle) / 1e3.
		pt := (pictureUpdateTimes at: cycle) / 1e3.
		gc := (gcHistory at: cycle * 2) - (gcHistory at: cycle * 2 + 2).
		{
			'"Frame Time"'. [ft - gc printOn: aStream showingDecimalPlaces: 3].
			'Batching'. [bt printOn: aStream showingDecimalPlaces: 3].
			'"Picture Update"'. [pt printOn: aStream showingDecimalPlaces: 3].
			'GPU'. [(gpuTimes at: cycle) / 1e6 printOn: aStream showingDecimalPlaces: 3].
			'GC'. [gc printOn: aStream].
			'Input'. [(inputTimes at: cycle) / 1e3 printOn: aStream showingDecimalPlaces: 3].
			'Stepping'. [st printOn: aStream showingDecimalPlaces: 3].
			'Other'. [ft - gc - st - bt - pt printOn: aStream showingDecimalPlaces: 3].
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
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/20/2022 15:06'
}
RtBatchingExample >> targetVersion [

	^ GL42Core
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 6/16/2022 14:26'
}
RtBatchingExample >> triggerDebugAction [

	debugNextCycle := true.
]
