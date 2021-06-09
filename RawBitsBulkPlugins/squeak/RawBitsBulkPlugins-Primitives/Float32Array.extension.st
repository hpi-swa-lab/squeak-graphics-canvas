Extension { #name : #Float32Array }

{
	#category : #'*RawBitsBulkPlugins-Primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 14:17'
}
Float32Array >> primExternalPluginNewAt: index put: value [

	<primitive: 'primitiveAtPutNew' module: 'Float32ArrayBulkPlugin'>
	^ self primitiveFailed
]

{
	#category : #'*RawBitsBulkPlugins-Primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 14:17'
}
Float32Array >> primExternalPluginNoneAt: index put: value [

	<primitive: 'primitiveAtPutNone' module: 'Float32ArrayBulkPlugin'>
	^ self primitiveFailed
]

{
	#category : #'*RawBitsBulkPlugins-Primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 14:17'
}
Float32Array >> primExternalPluginOldAt: index put: value [

	<primitive: 'primitiveAtPutOld' module: 'Float32ArrayBulkPlugin'>
	^ self primitiveFailed
]

{
	#category : #'*RawBitsBulkPlugins-Primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 14:17'
}
Float32Array >> primInternalPluginAt: index put: value [

	<primitive: 'primitiveAtPut' module: 'FloatArrayPlugin'>
	^ self primitiveFailed
]

{
	#category : #'*RawBitsBulkPlugins-Primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 14:20'
}
Float32Array >> startingAt: index put: value1 put: value2 [

	<primitive: 'primitiveStartingAtPut2' module: 'Float32ArrayBulkPlugin'>
	self primitiveFailed. "just for now, so we spot problems immediately"
	self at: index put: value1.
	self at: index + 1 put: value2.
]

{
	#category : #'*RawBitsBulkPlugins-Primitives',
	#'squeak_changestamp' : 'stlu 6/9/2021 14:20'
}
Float32Array >> startingAt: index put: value1 put: value2 put: value3 put: value4 put: value5 put: value6 put: value7 put: value8 put: value9 put: value10 put: value11 put: value12 put: value13 put: value14 [

	<primitive: 'primitiveStartingAtPut14' module: 'Float32ArrayBulkPlugin'>
	self primitiveFailed. "just for now, so we spot problems immediately"
	self at: index put: value1.
	self at: index + 1 put: value2.
	self at: index + 2 put: value3.
	self at: index + 3 put: value4.
	self at: index + 4 put: value5.
	self at: index + 5 put: value6.
	self at: index + 6 put: value7.
	self at: index + 7 put: value8.
	self at: index + 8 put: value9.
	self at: index + 9 put: value10.
	self at: index + 10 put: value11.
	self at: index + 11 put: value12.
	self at: index + 12 put: value13.
	self at: index + 13 put: value14.
]
