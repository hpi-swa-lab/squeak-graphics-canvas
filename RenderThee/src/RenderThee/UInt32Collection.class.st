Class {
	#name : #UInt32Collection,
	#superclass : #NonPointersOrderedCollection,
	#category : #'RenderThee-Batching'
}

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 4/18/2022 17:57'
}
UInt32Collection >> arrayType [

	^ WordArray
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 4/18/2022 17:58'
}
UInt32Collection >> asWordArray [
	"Optimized version"
	^ array copyFrom: firstIndex to: lastIndex
]
