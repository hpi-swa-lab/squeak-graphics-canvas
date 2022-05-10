Extension { #name : #BlockClosure }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/25/2022 13:32'
}
BlockClosure >> betterBench [

	^ self betterBenchFor: 5 seconds
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/25/2022 13:33'
}
BlockClosure >> betterBenchFor: aDuration [
	"See how many times I can value within the given duration.  I'll answer a meaningful description."
	| roundTo3Digits benchResult count elapsedTime gcTime |
	roundTo3Digits := [:num |
		| rounded lowDigit |
		rounded := (num * 1000) rounded. "round to 1/1000"
		lowDigit := (rounded numberOfDigitsInBase: 10) - 3. "keep only first 3 digits"
		rounded := rounded roundTo:(10 raisedTo: lowDigit).
		(lowDigit >= 3 or: [rounded \\ 1000 = 0]) "display fractional part only when needed"
			ifTrue: [(rounded // 1000) asStringWithCommas]
			ifFalse: [(rounded / 1000.0) printString]].
	benchResult := self rawBenchFor: aDuration.
	count := benchResult first.
	elapsedTime := benchResult second // 1000.
	gcTime := benchResult third.
	^(roundTo3Digits value: count * 1000 / elapsedTime) , ' per second.', ((
		#(
			(1e-3 'seconds')
			(1 'milliseconds')
			(1e3 'microseconds')
			(1e6 'nanoseconds')
		)
			detect: [ :pair | elapsedTime * pair first >= count ]
			ifNone: [ #(1e9 'picoseconds') ])
		in: [ :pair |
			' {1} {2} per run.' format: {
				(roundTo3Digits value: elapsedTime * pair first / count).
				pair second } ]), (' {1} % GC time.' format: {gcTime / elapsedTime * 100 printShowingMaxDecimalPlaces: 5})
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/25/2022 13:28'
}
BlockClosure >> rawBench [

	^ self rawBenchFor: 5 seconds
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/25/2022 13:26'
}
BlockClosure >> rawBenchFor: aDuration [

	| startTime stopTime shouldRun count delay gcStart gcStop |
	delay := aDuration asDelay.
	count := 0.
	shouldRun := true.
	Smalltalk garbageCollect.
	[ delay wait. shouldRun := false ] forkAt: Processor timingPriority - 1.
	gcStart := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	startTime := Time utcMicrosecondClock.
	[ shouldRun ] whileTrue: [ 
		self value.
		count := count + 1 ].
	stopTime := Time utcMicrosecondClock.
	gcStop := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	^ {
		count. "num executions"
		stopTime - startTime. "elapsed microseconds"
		gcStop - gcStart. "milliseconds spent in GC"
	}
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/28/2022 15:26'
}
BlockClosure >> rawBenchTimes: anInteger [

	| startTime stopTime count gcStart gcStop |
	count := anInteger.
	Smalltalk garbageCollect.
	gcStart := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	startTime := Time utcMicrosecondClock.
	[ (count := count - 1) >= 0 ] whileTrue: [ 
		self value].
	stopTime := Time utcMicrosecondClock.
	gcStop := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	^ {
		anInteger. "num executions"
		stopTime - startTime. "elapsed microseconds"
		gcStop - gcStart. "milliseconds spent in GC"
	}
]
