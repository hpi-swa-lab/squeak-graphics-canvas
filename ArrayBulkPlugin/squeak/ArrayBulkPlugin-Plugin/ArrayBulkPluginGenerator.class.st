Class {
	#name : #ArrayBulkPluginGenerator,
	#superclass : #Object,
	#category : #'ArrayBulkPlugin-Plugin'
}

{ #category : #compilation }
ArrayBulkPluginGenerator >> generatePluginPrimitives [
"
self new generatePluginPrimitives.
"
	2 to: 14 do: [:numSlots |
		| template |
		template := self pluginTemplateForStartingAtPut: numSlots.
		{
			{ 'Float32'. 'float'. 'isWords:'. 'stackFloatValue:' }.
			{ 'Float64'. 'double'. 'isLong64s:'. 'stackFloatValue:' }.
			{ 'UInt32'. 'unsigned int'. 'isWords:'. 'stackIntegerValue:' }.
			{ 'UInt64'. 'unsigned long long'. 'isLong64s:'. 'stackIntegerValue:' }.
			{ 'Int32'. 'int'. 'isWords:'. 'stackIntegerValue:' }.
			{ 'Int64'. 'long long'. 'isLong64s:'. 'stackIntegerValue:' }.
		} do: [:spec |
			self pluginClass
				compile: (template format: spec)
				classified: spec first asLowercase , ' primitives']].
]

{ #category : #compilation }
ArrayBulkPluginGenerator >> generateUserMethods [
"
self new generateUserMethods.
"
	2 to: 14 do: [:numSlots |
		| template |
		template := self userTemplateForStartingAtPut: numSlots.
		{
			Float32Array. 'Float32'.
			Float64Array. 'Float64'.
			WordArray. 'UInt32'.
			DoubleWordArray. 'UInt64'.
			IntegerArray. 'Int32'.
			SignedDoubleWordArray. 'Int64'. } groupsOf: 2 atATimeDo: [:cls :name |
				cls
					compile: (template format: { name })
					classified: self userMessageCategory].
		
		ArrayedCollection
			compile: (self userSourceForFallbackStartingAtPut: numSlots)
			classified: self userMessageCategory].
]

{ #category : #accessing }
ArrayBulkPluginGenerator >> pluginClass [

	^ ArrayBulkPlugin
]

{ #category : #accessing }
ArrayBulkPluginGenerator >> pluginName [

	^ self pluginClass moduleName
]

{ #category : #'code generation' }
ArrayBulkPluginGenerator >> pluginTemplateForStartingAtPut: numSlots [

	^ String streamContents: [:stream |
		stream
			nextPutAll: 'primitive{1}StartingAtPut'; store: numSlots; nextPutAll: '

	| startSlot slotPtr rcvr numSlots |
	<export: true>
	<var: #slotPtr type: #''{2} *''>
	rcvr := interpreterProxy stackValue: '; store: numSlots + 1; nextPutAll: '.
	(interpreterProxy {3} rcvr) ifFalse: [
		^ interpreterProxy primitiveFailFor: PrimErrBadReceiver].
	
	startSlot := (interpreterProxy stackIntegerValue: '; store: numSlots; nextPutAll: ') - 1.
	numSlots := interpreterProxy slotSizeOf: rcvr.
	(interpreterProxy failed or: [
		startSlot < 0 or: [
			startSlot + '; store: numSlots; nextPutAll: ' > numSlots]]) ifTrue: [
		^ interpreterProxy primitiveFailFor: PrimErrBadIndex].
	
	slotPtr := self cCoerce: (interpreterProxy firstIndexableField: rcvr) to: #''{2} *''.
	slotPtr at: startSlot put: (interpreterProxy {4} '; store: numSlots - 1; nextPutAll: ').'.
	
		1 to: numSlots - 1 do: [:index |
			stream
				cr; tab;
				nextPutAll: 'slotPtr at: startSlot+'; store: index; nextPutAll: ' put: (interpreterProxy {4} ';
				store: numSlots - index - 1; nextPutAll: ').'].
		stream
			cr; cr; tab;
			nextPutAll: 'interpreterProxy pop: '; store: numSlots + 1; nextPutAll: '.']
]

{ #category : #accessing }
ArrayBulkPluginGenerator >> userMessageCategory [

	^ #'*ArrayBulkPlugin-Primitives'
]

{ #category : #'code generation' }
ArrayBulkPluginGenerator >> userSourceForFallbackStartingAtPut: numSlots [

	^ String streamContents: [:stream |
		stream
			nextPutAll: 'startingAt: index put: value1'.
		2 to: numSlots do: [:index |
			stream nextPutAll: ' put: value'; store: index].
		
		stream
			cr; cr; tab;
			nextPutAll: 'self at: index put: value1.'.
		
		2 to: numSlots do: [:index |
			stream
				cr; tab;
				nextPutAll: 'self at: index+'; store: index-1;
				nextPutAll: ' put: value'; store: index;
				nextPutAll: '.']]
]

{ #category : #'code generation' }
ArrayBulkPluginGenerator >> userTemplateForStartingAtPut: numSlots [

	^ String streamContents: [:stream |
		stream
			nextPutAll: 'startingAt: index put: value1'.
		2 to: numSlots do: [:index |
			stream nextPutAll: ' put: value'; store: index].
		
		stream
			cr; cr; tab;
			nextPutAll: '<primitive: ''primitive{1}StartingAtPut'; store: numSlots;
			nextPutAll: ''' module: '; nextPutAll: self pluginName storeString;
			nextPutAll: '>'.
		
		stream
			cr; tab;
			nextPutAll: 'self at: index put: value1.'.
		
		2 to: numSlots do: [:index |
			stream
				cr; tab;
				nextPutAll: 'self at: index+'; store: index-1;
				nextPutAll: ' put: value'; store: index;
				nextPutAll: '.']]
]
