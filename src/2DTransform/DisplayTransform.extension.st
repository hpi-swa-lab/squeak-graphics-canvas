Extension { #name : #DisplayTransform }

{ #category : #'*2DTransform' }
DisplayTransform >> asMatrix2x3 [

	^ self asMatrixTransform2x3 asMatrix2x3
]

{ #category : #'*2DTransform' }
DisplayTransform >> isMatrix2x3 [

	^ false
]
