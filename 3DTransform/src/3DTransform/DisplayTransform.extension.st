Extension { #name : #DisplayTransform }

{ #category : #'*3DTransform' }
DisplayTransform >> asMatrix2x3 [

	^ self asMatrixTransform2x3 asMatrix2x3
]

{ #category : #'*3DTransform' }
DisplayTransform >> isMatrix2x3 [

	^ false
]
