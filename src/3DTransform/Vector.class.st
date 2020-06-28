"
I am the superclass for all floating point vector objects in Croquet.
"
Class {
	#name : #Vector,
	#superclass : #Float32Array,
	#type : #words,
	#category : '3DTransform-Vectors'
}

{ #category : #island }
Vector class >> howToPassAsArgument [
	"We clone all vectors, even the array ones to point out that manipulation of those vectors outside of some context is not a goof idea. We may reassess this later."
	^#passByClone:
]

{ #category : #'class initialization' }
Vector class >> initialize [
	"Vector initialize"
	DataStream initialize. "register with DataStream"
]

{ #category : #'instance creation' }
Vector class >> new [
	^super new: self numElements
]

{ #category : #'instance creation' }
Vector class >> numElements [
	^0
]

{ #category : #'as yet unclassified' }
Vector >> copyFrom: array [

	| sz |
	sz := self size min: array size.
	1 to: sz do:[:index | self at:index put: (array at: index)].
]

{ #category : #accessing }
Vector >> floatAt: index [
	"For subclasses that override #at:"
	<primitive: 'primitiveAt' module: 'FloatArrayPlugin'>
	^Float fromIEEE32Bit: (self basicAt: index)
]

{ #category : #accessing }
Vector >> floatAt: index put: value [
	"For subclasses that override #at:put:"
	<primitive: 'primitiveAtPut' module: 'FloatArrayPlugin'>
	self basicAt: index put: value asIEEE32BitWord.
	^value
]

{ #category : #initialize }
Vector >> loadFrom: srcObject [
	self == srcObject ifTrue:[^self].
	self class == srcObject class
		ifTrue:[self replaceFrom: 1 to: self size with: srcObject startingAt: 1]
		ifFalse:[self privateLoadFrom: srcObject]
]

{ #category : #accessing }
Vector >> numElements [
	^self class numElements
]

{ #category : #private }
Vector >> privateLoadFrom: srcObject [
	"Load the receiver from the given source object."
	self error:'Cannot load a ', srcObject class name,' into a ', self class name.
]

{ #category : #private }
Vector >> replaceFrom: start to: stop with: replacement startingAt: repStart [ 
	"Primitive. This destructively replaces elements from start to stop in the receiver starting at index, repStart, in the collection, replacement. Answer the receiver. Range checks are performed in the primitive only. Optional. See Object documentation whatIsAPrimitive."
	| index repOff |
	<primitive: 105>
	repOff := repStart - start.
	index := start - 1.
	[(index := index + 1) <= stop]
		whileTrue: [self basicAt: index put: (replacement basicAt: repOff + index)]
]

{ #category : #accessing }
Vector >> wordAt: index [
	<primitive: 60>
	^self primitiveFailed
]

{ #category : #accessing }
Vector >> wordAt: index put: value [
	<primitive: 61>
	^self primitiveFailed
]
