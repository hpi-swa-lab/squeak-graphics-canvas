Extension { #name : #MorphicTransform }

{ #category : #'*3DTransform-Vectors' }
MorphicTransform >> asMatrix4x4 [

	^((Matrix4x4 withRotation: angle radiansToDegrees negated around: 0 @ 0 @ 1) composedWithLocal:
		(Matrix4x4 withScale: scale asPoint @ 1))
			translation: offset negated @ 0
]
