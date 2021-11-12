Class {
	#name : #RtSamplerMorph,
	#superclass : #StringMorph,
	#instVars : [
		'lastUpdateTime',
		'retentionDuration',
		'updateInterval',
		'sampleTimeHistory'
	],
	#category : #'RenderThee-Tools'
}

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:17'
}
RtSamplerMorph >> addSample [

	sampleTimeHistory addLast: Time utcMicrosecondClock.
]

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:16'
}
RtSamplerMorph >> discardSamples: n [

	sampleTimeHistory removeFirst: n.
]

{
	#category : #sampling,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:16'
}
RtSamplerMorph >> discardSamplesOlderThan: time [

	| firstValidEntry |
	firstValidEntry := sampleTimeHistory
		findFirst: [:sampleTime | sampleTime > time].
	self discardSamples: firstValidEntry - 1.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 10/1/2021 16:16'
}
RtSamplerMorph >> initialize [

	super initialize.
	
	sampleTimeHistory := OrderedCollection new.
	
	lastUpdateTime := Time utcMicrosecondClock.
	retentionDuration := 2e6.
	updateInterval := 1e5.
	
	self font: (Preferences standardMenuFont emphasized: 1).
]

{
	#category : #contents,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:22'
}
RtSamplerMorph >> newContents [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:00'
}
RtSamplerMorph >> retentionDuration [

	^ retentionDuration
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/30/2021 19:00'
}
RtSamplerMorph >> retentionDuration: anObject [

	retentionDuration := anObject.
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'stlu 9/30/2021 19:22'
}
RtSamplerMorph >> step [

	| now  |
	self addSample.
	now := Time utcMicrosecondClock.
	now - lastUpdateTime > updateInterval ifTrue: [
		self discardSamplesOlderThan: now - retentionDuration.
		self contents: self newContents.
		lastUpdateTime := now].
]

{
	#category : #'stepping and presenter',
	#'squeak_changestamp' : 'stlu 9/29/2021 14:26'
}
RtSamplerMorph >> stepTime [

	^ 0
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'ct 9/4/2019 15:42'
}
RtSamplerMorph >> updateInterval [

	^ updateInterval
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'ct 9/4/2019 15:42'
}
RtSamplerMorph >> updateInterval: aNumber [

	updateInterval := aNumber
]
