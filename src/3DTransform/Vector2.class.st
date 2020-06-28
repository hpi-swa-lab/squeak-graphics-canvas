"
I represent simple 2D coordinates in Croquet. I may be used to represent both, 2D points and 2D texture coordinates. 
"
Class {
	#name : #Vector2,
	#superclass : #Vector,
	#type : #words,
	#category : '3DTransform-Vectors'
}

{ #category : #'instance creation' }
Vector2 class >> from: anArray [

	^ self x: (anArray at:1) y: (anArray at:2) .
]

{ #category : #'instance creation' }
Vector2 class >> numElements [
	^2
]

{ #category : #'instance creation' }
Vector2 class >> u: uValue v: vValue [
	^self new u: uValue v: vValue
]

{ #category : #'instance creation' }
Vector2 class >> x: uValue y: vValue [
	^self new x: uValue y: vValue
]

{ #category : #converting }
Vector2 >> asPoint [
	^self x @ self y
]

{ #category : #accessing }
Vector2 >> putAtGL: gl Uniform: location [
	"gl glUniform2fv: location with: 1 with: self"
	gl glUniform2f: location with: self x with: self y
]

{ #category : #accessing }
Vector2 >> u [
	^self floatAt: 1
]

{ #category : #accessing }
Vector2 >> u: aFloat [
	self floatAt: 1 put: aFloat
]

{ #category : #initialize }
Vector2 >> u: uValue v: vValue [
	self u: uValue.
	self v: vValue.
]

{ #category : #accessing }
Vector2 >> v [
	^self floatAt: 2
]

{ #category : #accessing }
Vector2 >> v: aFloat [
	self floatAt: 2 put: aFloat
]

{ #category : #accessing }
Vector2 >> x [
	^self at: 1
]

{ #category : #accessing }
Vector2 >> x: aFloat [
	self floatAt: 1 put: aFloat
]

{ #category : #initialize }
Vector2 >> x: uValue y: vValue [
	self x: uValue.
	self y: vValue.
]

{ #category : #accessing }
Vector2 >> y [
	^self at: 2
]

{ #category : #accessing }
Vector2 >> y: aFloat [
	self floatAt: 2 put: aFloat
]
