Extension { #name : #MatrixTransform2x3 }

{ #category : #'*3DTransform' }
MatrixTransform2x3 >> asMatrix4x4 [

	| m |
	m := Matrix4x4 identity.
	m a11: self a11.
	m a12: self a12.
	m a21: self a21.
	m a22: self a22.
	m a14: self a13.
	m a24: self a23.
	^ m
]