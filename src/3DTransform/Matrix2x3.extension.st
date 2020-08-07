Extension { #name : #Matrix2x3 }

{ #category : #'*3DTransform' }
Matrix2x3 >> asMatrix4x4 [

	| m |
	m := Matrix4x4 new.
	m a11: a11.
	m a12: a12.
	m a21: a21.
	m a22: a22.
	m a14: a13.
	m a24: a23.
	m a33: 1.0.
	m a44: 1.0.
	^ m
]
