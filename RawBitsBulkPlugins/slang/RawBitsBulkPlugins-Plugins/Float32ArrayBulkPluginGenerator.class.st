Class {
	#name : #Float32ArrayBulkPluginGenerator,
	#superclass : #Object,
	#category : #'RawBitsBulkPlugins-Plugins'
}

{
	#category : #compilation,
	#'squeak_changestamp' : 'stlu 6/10/2021 11:31'
}
Float32ArrayBulkPluginGenerator >> compileAll [

	2 to: 14 do: [:index |
		Float32ArrayBulkPlugin
			compile: (self sourceForNumFloats: index)
			classified: #'bulk access primitives']
]

{
	#category : #'code generation',
	#'squeak_changestamp' : 'stlu 6/10/2021 11:28'
}
Float32ArrayBulkPluginGenerator >> sourceForNumFloats: numFloats [

	self assert: (numFloats >= 1 and: [numFloats <= 14]).
	^ self template format: {
		numFloats storeString.
		(numFloats + 1) storeString.
		(numFloats - 1) storeString.
		self storeSource: numFloats.
	}
]

{
	#category : #'code generation',
	#'squeak_changestamp' : 'stlu 6/10/2021 11:28'
}
Float32ArrayBulkPluginGenerator >> storeSource: numFloats [

	^ String streamContents: [:stream |
		1 to: numFloats - 1 do: [:index |
			| source |
			source := 'floatPtr at: startIndex+{1} put: (interpreterProxy stackFloatValue: {2}).'
						format: { index . numFloats - index - 1 }.
			stream
				tab;
				nextPutAll: source;
				cr]]
]

{
	#category : #'code generation',
	#'squeak_changestamp' : 'stlu 6/10/2021 11:13'
}
Float32ArrayBulkPluginGenerator >> template [

	^ 'primitiveStartingAtPut{1}

	| startIndex rcvr floatPtr numSlots |
	<export: true>
	<var: #floatPtr type: #''float *''>
	rcvr := interpreterProxy stackValue: {2}.
	"(interpreterProxy isWords: rcvr) ifFalse:
		[^interpreterProxy primitiveFailFor: PrimErrBadReceiver]."
	
	startIndex := (interpreterProxy stackIntegerValue: {1}) - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(startIndex < 0 or: [startIndex + {1} > numSlots]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	floatPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #''float *''.
	floatPtr at: startIndex put: (interpreterProxy stackFloatValue: {3}).
{4}
	interpreterProxy pop: {2}'
]
