"
FloatArrayPlugin provides fast access to FloatArrays for batch processing of float numbers
"
Class {
	#name : #ArrayBulkPlugin,
	#superclass : #InterpreterPlugin,
	#category : #'RawBitsBulkPlugins-Plugins',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #'translation to C',
	#'squeak_changestamp' : 'ar 9/15/1998 00:30'
}
ArrayBulkPlugin class >> declareCVarsIn: cg [
	"Nothing to declare..."
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut10 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 11.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 10) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 10 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 11.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut11 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 12.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 11) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 11 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 12.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut12 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 13.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 12) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 12 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 11).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+11 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 13.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut13 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 14.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 13) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 13 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 12).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 11).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+11 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+12 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 14.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut14 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 14) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 14 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 13).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 12).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 11).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+11 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+12 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+13 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 15.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut2 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 2) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 2 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 3.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut3 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 4.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 3) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 3 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 4.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut4 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 5.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 4) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 4 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 5.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut5 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 6.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 5) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 5 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 6.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut6 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 7.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 6) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 6 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 7.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut7 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 8.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 7) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 7 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 8.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut8 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 9.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 8) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 8 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 9.
]

{
	#category : #'float32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat32StartingAtPut9 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'float *'>
	rcvr := interpreterProxy stackValue: 10.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 9) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 9 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'float *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 10.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut10 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 11.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 10) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 10 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 11.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut11 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 12.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 11) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 11 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 12.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut12 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 13.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 12) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 12 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 11).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+11 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 13.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut13 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 14.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 13) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 13 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 12).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 11).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+11 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+12 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 14.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut14 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 14) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 14 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 13).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 12).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 11).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 10).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 9).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+9 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+10 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+11 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+12 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+13 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 15.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut2 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 2) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 2 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 3.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut3 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 4.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 3) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 3 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 4.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut4 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 5.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 4) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 4 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 5.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut5 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 6.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 5) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 5 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 6.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut6 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 7.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 6) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 6 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 7.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut7 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 8.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 7) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 7 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 8.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut8 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 9.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 8) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 8 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 9.
]

{
	#category : #'float64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveFloat64StartingAtPut9 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'double *'>
	rcvr := interpreterProxy stackValue: 10.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 9) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 9 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'double *'.
	slotPtr at: startSlot put: (interpreterProxy stackFloatValue: 8).
	slotPtr at: startSlot+1 put: (interpreterProxy stackFloatValue: 7).
	slotPtr at: startSlot+2 put: (interpreterProxy stackFloatValue: 6).
	slotPtr at: startSlot+3 put: (interpreterProxy stackFloatValue: 5).
	slotPtr at: startSlot+4 put: (interpreterProxy stackFloatValue: 4).
	slotPtr at: startSlot+5 put: (interpreterProxy stackFloatValue: 3).
	slotPtr at: startSlot+6 put: (interpreterProxy stackFloatValue: 2).
	slotPtr at: startSlot+7 put: (interpreterProxy stackFloatValue: 1).
	slotPtr at: startSlot+8 put: (interpreterProxy stackFloatValue: 0).

	interpreterProxy pop: 10.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut10 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 11.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 10) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 10 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 11.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut11 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 12.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 11) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 11 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 12.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut12 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 13.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 12) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 12 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 13.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut13 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 14.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 13) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 13 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 14.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut14 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 14) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 14 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 13).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+13 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 15.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut2 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 2) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 2 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 3.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut3 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 4.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 3) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 3 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 4.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut4 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 5.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 4) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 4 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 5.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut5 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 6.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 5) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 5 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 6.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut6 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 7.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 6) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 6 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 7.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut7 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 8.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 7) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 7 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 8.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut8 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 9.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 8) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 8 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 9.
]

{
	#category : #'int32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt32StartingAtPut9 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'int *'>
	rcvr := interpreterProxy stackValue: 10.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 9) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 9 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 10.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut10 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 11.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 10) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 10 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 11.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut11 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 12.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 11) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 11 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 12.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut12 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 13.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 12) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 12 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 13.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut13 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 14.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 13) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 13 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 14.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut14 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 14) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 14 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 13).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+13 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 15.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut2 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 2) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 2 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 3.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut3 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 4.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 3) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 3 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 4.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut4 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 5.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 4) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 4 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 5.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut5 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 6.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 5) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 5 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 6.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut6 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 7.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 6) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 6 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 7.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut7 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 8.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 7) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 7 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 8.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut8 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 9.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 8) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 8 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 9.
]

{
	#category : #'int64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveInt64StartingAtPut9 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'long long *'>
	rcvr := interpreterProxy stackValue: 10.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 9) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 9 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 10.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut10 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 11.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 10) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 10 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 11.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut11 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 12.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 11) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 11 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 12.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut12 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 13.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 12) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 12 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 13.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut13 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 14.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 13) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 13 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 14.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut14 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 14) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 14 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 13).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+13 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 15.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut2 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 2) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 2 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 3.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut3 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 4.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 3) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 3 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 4.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut4 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 5.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 4) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 4 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 5.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut5 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 6.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 5) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 5 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 6.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut6 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 7.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 6) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 6 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 7.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut7 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 8.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 7) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 7 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 8.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut8 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 9.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 8) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 8 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 9.
]

{
	#category : #'uint32 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt32StartingAtPut9 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned int *'>
	rcvr := interpreterProxy stackValue: 10.
	(interpreterProxy isWords: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 9) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 9 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned int *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 10.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut10 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 11.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 10) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 10 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 11.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut11 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 12.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 11) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 11 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 12.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut12 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 13.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 12) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 12 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 13.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut13 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 14.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 13) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 13 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 14.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut14 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 15.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 14) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 14 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 13).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 12).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 11).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 10).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 9).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+9 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+10 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+11 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+12 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+13 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 15.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut2 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 3.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 2) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 2 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 3.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut3 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 4.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 3) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 3 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 4.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut4 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 5.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 4) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 4 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 5.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut5 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 6.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 5) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 5 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 6.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut6 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 7.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 6) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 6 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 7.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut7 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 8.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 7) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 7 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 8.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut8 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 9.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 8) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 8 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 9.
]

{
	#category : #'uint64 primitives',
	#'squeak_changestamp' : 'stlu 4/20/2022 17:04'
}
ArrayBulkPlugin >> primitiveUInt64StartingAtPut9 [

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #'unsigned long long *'>
	rcvr := interpreterProxy stackValue: 10.
	(interpreterProxy isLong64s: rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: 9) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + 9 > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #'unsigned long long *'.
	slotPtr at: startSlot put: (interpreterProxy stackIntegerValue: 8).
	slotPtr at: startSlot+1 put: (interpreterProxy stackIntegerValue: 7).
	slotPtr at: startSlot+2 put: (interpreterProxy stackIntegerValue: 6).
	slotPtr at: startSlot+3 put: (interpreterProxy stackIntegerValue: 5).
	slotPtr at: startSlot+4 put: (interpreterProxy stackIntegerValue: 4).
	slotPtr at: startSlot+5 put: (interpreterProxy stackIntegerValue: 3).
	slotPtr at: startSlot+6 put: (interpreterProxy stackIntegerValue: 2).
	slotPtr at: startSlot+7 put: (interpreterProxy stackIntegerValue: 1).
	slotPtr at: startSlot+8 put: (interpreterProxy stackIntegerValue: 0).

	interpreterProxy pop: 10.
]
