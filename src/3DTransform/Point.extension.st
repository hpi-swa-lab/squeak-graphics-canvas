Extension { #name : #Point }

{ #category : #'*3DTransform' }
Point >> @ aNumber [
	^Vector3 x: x y: y z: aNumber
]

{ #category : #'*3DTransform' }
Point >> asVector3 [

	^ self @ 0
]

{ #category : #'*3DTransform' }
Point >> z [

	^ 0.0
]
