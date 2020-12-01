Class {
	#name : #FFICallbackResult,
	#superclass : #ExternalUnion,
	#category : #'Vulkan-FFI-Support',
	#commentStamp : ''
}

{
	#category : #'field definition',
	#timestamp : ''
}
FFICallbackResult class >> fields [
	"
	self defineFields.
	"
	^ #(
		(booleanResult			'bool')
		(floatResult				'double')
		(positiveIntegerResult	'uintptr_t')
		(integerResult			'intptr_t')
	)
]
