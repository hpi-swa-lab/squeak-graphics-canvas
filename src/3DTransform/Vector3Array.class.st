"
I am an efficient representation of Vector3 elements.
"
Class {
	#name : #Vector3Array,
	#superclass : #VectorArray,
	#type : #words,
	#classVars : [
		'ZeroVertex'
	],
	#category : '3DTransform-Arrays'
}

{ #category : #'instance creation' }
Vector3Array class >> contentsClass [
	^Vector3
]

{ #category : #'class initialization' }
Vector3Array class >> initialize [
	"Vector3Array initialize"
	ZeroVertex := Vector3 new.
]

{ #category : #'math functions' }
Vector3Array >> addVector: vec [
	1 to: self size do:[:i | self at: i put: (self at: i)+vec.].
]

{ #category : #accessing }
Vector3Array >> at: index [
	"Return the primitive vertex at the given index"
	| vtx |
	vtx := ZeroVertex clone.
	vtx replaceFrom: 1 to: 3 with: self startingAt: index - 1 * 3 + 1.
	^vtx
]

{ #category : #accessing }
Vector3Array >> at: index put: anObject [
	"Store the object at the given index in the receiver"
	| idx |
	idx := index - 1 * 3.
	self privateReplaceFrom: idx+1 to: idx + 3 with: anObject startingAt: 1.
	^anObject
]

{ #category : #accessing }
Vector3Array >> contentsClass [
	^Vector3
]

{ #category : #accessing }
Vector3Array >> contentsSize [
	^3
]

{ #category : #'math functions' }
Vector3Array >> divideByArray: array [

	1 to: self size do:[:i | self at: i put: (self at: i)/(array at: i).].
]

{ #category : #'math functions' }
Vector3Array >> lengthInto: target [

	1 to: self size do:[:i | target at: i put: (self at: i) length.].
]

{ #category : #'math functions' }
Vector3Array >> normalize [

	1 to: self size do:[:i | self at: i put: (self at: i) / (self at: i)length.].
]

{ #category : #'math functions' }
Vector3Array >> scaleByArray: array [

	1 to: self size do:[:i | self at: i put: (self at: i)*(array at: i).].
]

{ #category : #'math functions' }
Vector3Array >> squaredLengthInto: target [

	1 to: self size do:[:i | target at: i put: (self at: i) squaredLength.].
]

{ #category : #'math functions' }
Vector3Array >> subtractVector: vec [
	1 to: self size do:[:i | self at: i put: (self at: i)-vec.].
]
