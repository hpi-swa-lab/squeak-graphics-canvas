Class {
	#name : #RtFrameRateMorph,
	#superclass : #RtSamplerMorph,
	#category : #'RenderThee-Tools'
}

{
	#category : #contents,
	#'squeak_changestamp' : 'stlu 9/30/2021 20:04'
}
RtFrameRateMorph >> newContents [

	| timeElapsed millisecondsPerFrame frameRate |
	timeElapsed := sampleTimeHistory last - sampleTimeHistory first.
	timeElapsed > 0
		ifTrue: [
			millisecondsPerFrame := timeElapsed / 1000.0 / (sampleTimeHistory size - 1).
			frameRate := 1000.0 / millisecondsPerFrame]
		ifFalse: [
			millisecondsPerFrame := 1000.0.
			frameRate := 0.0].
	^ '{1} mSecs ({2} frames/sec)' format: {
		millisecondsPerFrame printShowingMaxDecimalPlaces: 2.
		frameRate rounded }
]
