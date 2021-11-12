Class {
	#name : #RtIdleTimeMorph,
	#superclass : #RtSamplerMorph,
	#instVars : [
		'idleTimeHistory'
	],
	#category : #'RenderThee-Tools'
}

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 10/1/2021 15:17'
}
RtIdleTimeMorph >> addSample [

	super addSample.
	idleTimeHistory addLast: (Smalltalk vmParameterAt: 16).
]

{
	#category : #contents,
	#'squeak_changestamp' : 'stlu 10/1/2021 15:18'
}
RtIdleTimeMorph >> calculateIdlePercentage [

	| microsecondsElapsed microsecondsInIdle |
	microsecondsElapsed := sampleTimeHistory last - sampleTimeHistory first.
	microsecondsElapsed > 0 ifFalse: [^ 0.0].
	microsecondsInIdle := idleTimeHistory last - idleTimeHistory first.
	^ microsecondsInIdle * 100 / microsecondsElapsed
]

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 10/1/2021 15:17'
}
RtIdleTimeMorph >> discardSamples: n [

	super discardSamples: n.
	idleTimeHistory removeFirst: n.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 10/1/2021 16:17'
}
RtIdleTimeMorph >> initialize [

	super initialize.
	
	idleTimeHistory := OrderedCollection new.
]

{
	#category : #contents,
	#'squeak_changestamp' : 'stlu 10/1/2021 15:19'
}
RtIdleTimeMorph >> newContents [

	^ '{1}% Idle' format: {
		self calculateIdlePercentage printShowingMaxDecimalPlaces: 2 }
]
