"
FloatArrayPlugin provides fast access to FloatArrays for batch processing of float numbers
"
Class {
	#name : #Float32ArrayBulkPlugin,
	#superclass : #InterpreterPlugin,
	#category : #'RawBitsBulkPlugins-Plugins',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #'translation to C',
	#'squeak_changestamp' : 'ar 9/15/1998 00:30'
}
Float32ArrayBulkPlugin class >> declareCVarsIn: cg [
	"Nothing to declare..."
]

{
	#category : #'perf reference primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 09:53'
}
Float32ArrayBulkPlugin >> primitiveAtPutNew [

	| valueOop index rcvr floatPtr numSlots |
	<export: true>
	<var: #floatPtr type: #'float *'>
	valueOop := interpreterProxy stackValue: 0.
	index := ((interpreterProxy integerValueOf: (interpreterProxy stackValue: 1)) - 1) asUnsignedInteger.
	rcvr := interpreterProxy stackValue: 2.
	
	numSlots := interpreterProxy slotSizeOf: rcvr.
	index >= numSlots ifTrue: [^ interpreterProxy primitiveFail].
	floatPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	floatPtr at: index put: (interpreterProxy floatValueOf: valueOop).
	interpreterProxy pop: 3 thenPush: valueOop
]

{
	#category : #'perf reference primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 10:43'
}
Float32ArrayBulkPlugin >> primitiveAtPutNone [

	| valueOop index rcvr numSlots |
	<export: true>
	valueOop := interpreterProxy stackValue: 0.
	index := ((interpreterProxy stackIntegerValue: 1) - 1) asUnsignedInteger.
	rcvr := interpreterProxy stackValue: 2.
	
	numSlots := interpreterProxy slotSizeOf: rcvr.
	index >= numSlots ifTrue: [^ interpreterProxy primitiveFail].
	interpreterProxy floatValueOf: valueOop.
	interpreterProxy pop: 3 thenPush: valueOop
]

{
	#category : #'perf reference primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 09:29'
}
Float32ArrayBulkPlugin >> primitiveAtPutOld [

	| value floatValue index rcvr floatPtr |
	<export: true>
	<var: #floatValue type: #double>
	<var: #floatPtr type: #'float *'>
	value := interpreterProxy stackValue: 0.
	floatValue := (interpreterProxy isIntegerObject: value)
					ifTrue: [(interpreterProxy integerValueOf: value) asFloat]
					ifFalse: [interpreterProxy floatValueOf: value].
	index := interpreterProxy stackIntegerValue: 1.
	rcvr := interpreterProxy stackValue: 2.
	(interpreterProxy failed not
	 and: [(interpreterProxy isWords: rcvr)
	 and: [index > 0 and: [index <= (interpreterProxy slotSizeOf: rcvr)]]]) ifFalse:
		[^interpreterProxy primitiveFail].
	floatPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	floatPtr at: index-1 put: (self cCoerce: floatValue to: #float).
	interpreterProxy pop: 3 thenPush: value
]

{
	#category : #'bulk access primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 10:57'
}
Float32ArrayBulkPlugin >> primitiveStartingAtPut14 [

	| startIndex rcvr floatPtr numSlots |
	<export: true>
	<var: #floatPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isWords: rcvr) ifFalse:
		[^interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startIndex := (interpreterProxy integerValueOf: (interpreterProxy stackValue: 14)) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(startIndex < 0 or: [startIndex + 14 > numSlots]) ifTrue: [^ interpreterProxy primitiveFail].
	
	floatPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	floatPtr at: startIndex put: (interpreterProxy stackFloatValue: 13).
	floatPtr at: startIndex+1 put: (interpreterProxy stackFloatValue: 12).
	floatPtr at: startIndex+2 put: (interpreterProxy stackFloatValue: 11).
	floatPtr at: startIndex+3 put: (interpreterProxy stackFloatValue: 10).
	floatPtr at: startIndex+4 put: (interpreterProxy stackFloatValue: 9).
	floatPtr at: startIndex+5 put: (interpreterProxy stackFloatValue: 8).
	floatPtr at: startIndex+6 put: (interpreterProxy stackFloatValue: 7).
	floatPtr at: startIndex+7 put: (interpreterProxy stackFloatValue: 6).
	floatPtr at: startIndex+8 put: (interpreterProxy stackFloatValue: 5).
	floatPtr at: startIndex+9 put: (interpreterProxy stackFloatValue: 4).
	floatPtr at: startIndex+10 put: (interpreterProxy stackFloatValue: 3).
	floatPtr at: startIndex+11 put: (interpreterProxy stackFloatValue: 2).
	floatPtr at: startIndex+12 put: (interpreterProxy stackFloatValue: 1).
	floatPtr at: startIndex+13 put: (interpreterProxy stackFloatValue: 0).
	
	interpreterProxy pop: 16 thenPush: rcvr
]

{
	#category : #'bulk access primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 10:53'
}
Float32ArrayBulkPlugin >> primitiveStartingAtPut2 [

	| startIndex rcvr floatPtr numSlots |
	<export: true>
	<var: #floatPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isWords: rcvr) ifFalse:
		[^interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startIndex := (interpreterProxy integerValueOf: (interpreterProxy stackValue: 2)) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(startIndex < 0 or: [startIndex + 2 > numSlots]) ifTrue: [^ interpreterProxy primitiveFail].
	
	floatPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	floatPtr at: startIndex put: (interpreterProxy stackFloatValue: 1).
	floatPtr at: startIndex+1 put: (interpreterProxy stackFloatValue: 0).
	
	interpreterProxy pop: 4 thenPush: rcvr
]
