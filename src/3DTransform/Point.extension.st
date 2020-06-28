Extension { #name : #Point }

{ #category : #'*3DTransform' }
Point >> @ aNumber [
	^Vector3 x: x y: y z: aNumber
]
