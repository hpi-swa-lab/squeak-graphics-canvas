"
I represent an RGBA color value in floating point format. I am used during the lighting and shading computations.
"
Class {
	#name : #VectorColor,
	#superclass : #Vector,
	#type : #words,
	#category : '3DTransform-Vectors'
}

{ #category : #'instance creation' }
VectorColor class >> numElements [
	^4
]

{ #category : #'instance creation' }
VectorColor class >> r: rValue g: gValue b: bValue [
	^self new r: rValue g: gValue b: bValue a: 1.0
]

{ #category : #'instance creation' }
VectorColor class >> r: rValue g: gValue b: bValue a: aValue [
	^self new r: rValue g: gValue b: bValue a: aValue
]

{ #category : #'instance creation' }
VectorColor class >> red: r green: g blue: b alpha: a [
	"Create an initialize a color vector."

	| newColor |
	newColor := VectorColor new.

	newColor red: r.
	newColor green: g.
	newColor blue: b.
	newColor alpha: a.

	^ newColor.

]

{ #category : #accessing }
VectorColor >> a [
	^self floatAt: 4
]

{ #category : #accessing }
VectorColor >> alpha [
	^self floatAt: 4
]

{ #category : #accessing }
VectorColor >> alpha: aNumber [
	self floatAt: 4 put: aNumber
]

{ #category : #converting }
VectorColor >> asColor [
	^Color r: self red g: self green b: self blue alpha: self alpha
]

{ #category : #accessing }
VectorColor >> asVector3 [

	^Vector3 x: self r y: self g z: self b
]

{ #category : #accessing }
VectorColor >> asVector4 [

	^Vector4 x: self r y: self g z: self b w: self a.
]

{ #category : #converting }
VectorColor >> asVectorColor [

	^self
]

{ #category : #accessing }
VectorColor >> b [
	^self floatAt: 3
]

{ #category : #accessing }
VectorColor >> blue [
	^self floatAt: 3
]

{ #category : #accessing }
VectorColor >> blue: aNumber [
	self floatAt: 3 put: aNumber
]

{ #category : #converting }
VectorColor >> copyFrom: array [

	| sz |
	sz := self size min: array size.
	1 to: sz do:[:index | self at:index put: (array at: index)].
	array size = 3 ifTrue:[self at:4 put:1.0].
]

{ #category : #accessing }
VectorColor >> g [
	^self floatAt: 2
]

{ #category : #accessing }
VectorColor >> green [
	^self floatAt: 2
]

{ #category : #accessing }
VectorColor >> green: aNumber [
	self floatAt: 2 put: aNumber
]

{ #category : #interpolating }
VectorColor >> interpolateTo: end at: amountDone [
	"Return the color vector yielded by interpolating from the state of the object to the specified end state at the specified amount done"

	| newColor r g b a |
	r := self red.
	g := self green.
	b := self blue.
	a := self alpha.

	newColor := VectorColor new.
	newColor red: r + (((end red) - r) * amountDone).
	newColor green: g + (((end green) - g) * amountDone).
	newColor blue: b + (((end blue) - b) * amountDone).
	newColor alpha: a + (((end alpha) - a) * amountDone).

	^ newColor.

]

{ #category : #testing }
VectorColor >> isZero [
	^self alpha isZero
]

{ #category : #converting }
VectorColor >> pixelValue32 [
	^self asColor pixelWordForDepth: 32
]

{ #category : #private }
VectorColor >> privateLoadFrom: srcObject [
	| color |
	color := srcObject asColor.
	self red: color red.
	self green: color green.
	self blue: color blue.
	self alpha: color alpha.
]

{ #category : #accessing }
VectorColor >> r [
	^self floatAt: 1
]

{ #category : #initialize }
VectorColor >> r: rValue g: gValue b: bValue a: aValue [
	self red: rValue.
	self green: gValue.
	self blue: bValue.
	self alpha: aValue.
]

{ #category : #accessing }
VectorColor >> red [
	^self floatAt: 1
]

{ #category : #accessing }
VectorColor >> red: aNumber [
	self floatAt: 1 put: aNumber
]