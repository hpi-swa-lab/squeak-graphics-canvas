"
I am an array of Vectors.
"
Class {
	#name : #VectorArray,
	#superclass : #Vector,
	#type : #words,
	#category : #'3DTransform-Arrays'
}

{ #category : #'instance creation' }
VectorArray class >> contentsClass [
	^self subclassResponsibility
]

{ #category : #'instance creation' }
VectorArray class >> contentsSize [
	^self contentsClass numElements
]

{ #category : #island }
VectorArray class >> howToPassAsArgument [
	"This method is only here to document the fact that (for the time being) we decided to copy vector arrays as well as 'small' vectors. See the superclass' comment"
	^#passByClone:
]

{ #category : #'instance creation' }
VectorArray class >> new: n [
	^super new: self contentsSize*n
]

{ #category : #accessing }
VectorArray >> at: index [
	"Return the primitive vertex at the given index"
	| vtx |
	vtx := self contentsClass new.
	vtx replaceFrom: 1 to: vtx size with: self startingAt: index - 1 * self contentsSize + 1.
	^vtx
]

{ #category : #accessing }
VectorArray >> at: index put: anObject [
	"Store the object at the given index in the receiver"
	| idx |
	idx := index - 1 * self contentsSize.
	self privateReplaceFrom: idx+1 to: idx + self contentsSize with: anObject startingAt: 1.
	^anObject
]

{ #category : #accessing }
VectorArray >> contentsClass [
	^self class contentsClass
]

{ #category : #accessing }
VectorArray >> contentsSize [
	^self contentsClass numElements
]

{ #category : #copying }
VectorArray >> copyFrom: start to: stop [ 
	"Answer a copy of a subset of the receiver, starting from element at 
	index start until element at index stop."

	| newSize |
	newSize := stop - start + 1.
	^(self species new: newSize)
		replaceFrom: 1
		to: newSize
		with: self
		startingAt: start
]

{ #category : #enumerating }
VectorArray >> do: aBlock [
	"Overridden to store the (possibly) modified argument back"
	| obj |
	1 to: self size do:[:index|
		obj := self at: index.
		aBlock value: obj.
		self at: index put: obj].
]

{ #category : #private }
VectorArray >> privateReplaceFrom: start to: stop with: replacement startingAt: repStart [ 
	<primitive: 105>
	start to: stop do:[:i|
		self basicAt: i put: (replacement at: i - start + repStart).
	].
]

{ #category : #enumerating }
VectorArray >> readOnlyDo: aBlock [
	^super do: aBlock
]

{ #category : #private }
VectorArray >> replaceFrom: start to: stop with: replacement startingAt: repStart [
	| max |
	max := (replacement size - repStart) min: stop-start.
	start to: start+max do:[:i|
		self at: i put: (replacement at: i - start + repStart).
	].
]

{ #category : #accessing }
VectorArray >> size [
	"Return the number of primitive vertices that can be stored in the receiver"
	^self basicSize // self contentsSize
]
