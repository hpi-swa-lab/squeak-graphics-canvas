Extension { #name : #FloatArray }

{ #category : #'*3DTransform' }
FloatArray >> floatAt: index [
	<primitive: 'primitiveAt' module: 'FloatArrayPlugin'>
	^Float fromIEEE32Bit: (self basicAt: index)
]

{ #category : #'*3DTransform' }
FloatArray >> floatAt: index put: value [
	<primitive: 'primitiveAtPut' module: 'FloatArrayPlugin'>
	value isFloat 
		ifTrue:[self basicAt: index put: value asIEEE32BitWord]
		ifFalse:[self at: index put: value asFloat].
	^value
]
