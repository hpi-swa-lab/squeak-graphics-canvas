Class {
	#name : #RtGCPressureMorph,
	#superclass : #RtSamplerMorph,
	#instVars : [
		'fullGCTimeHistory',
		'fullGCCountHistory',
		'scavGCTimeHistory',
		'scavGCCountHistory'
	],
	#category : #'RenderThee-Tools'
}

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:24'
}
RtGCPressureMorph >> addSample [

	super addSample.
	fullGCCountHistory addLast: (Smalltalk vmParameterAt: 7).
	fullGCTimeHistory addLast: (Smalltalk vmParameterAt: 8).
	scavGCCountHistory addLast: (Smalltalk vmParameterAt: 9).
	scavGCTimeHistory addLast: (Smalltalk vmParameterAt: 10).
]

{
	#category : #contents,
	#'squeak_changestamp' : 'stlu 9/30/2021 20:05'
}
RtGCPressureMorph >> calculateGCPercentage [

	| microsecondsElapsed millisecondsInGC |
	microsecondsElapsed := sampleTimeHistory last - sampleTimeHistory first.
	microsecondsElapsed > 0 ifFalse: [^ 100.0].
	millisecondsInGC := fullGCTimeHistory last - fullGCTimeHistory first
		+ scavGCTimeHistory last - scavGCTimeHistory first.
	^ millisecondsInGC * 1000 * 100 / microsecondsElapsed
]

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:31'
}
RtGCPressureMorph >> discardSamples: n [

	super discardSamples: n.
	fullGCCountHistory removeFirst: n.
	fullGCTimeHistory removeFirst: n.
	scavGCCountHistory removeFirst: n.
	scavGCTimeHistory removeFirst: n.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 10/1/2021 16:16'
}
RtGCPressureMorph >> initialize [

	super initialize.
	
	fullGCTimeHistory := OrderedCollection new.
	fullGCCountHistory := OrderedCollection new.
	scavGCTimeHistory := OrderedCollection new.
	scavGCCountHistory := OrderedCollection new.
]

{
	#category : #contents,
	#'squeak_changestamp' : 'stlu 2/8/2022 20:54'
}
RtGCPressureMorph >> newContents [

	^ '{1}% GC' format: {
		self calculateGCPercentage printShowingDecimalPlaces: 2 }
]
