Extension { #name : #DisplayTransform }

{ #category : #'*RenderThee-Transform' }
DisplayTransform >> asMatrix2x3 [

	^ self asMatrixTransform2x3 asMatrix2x3
]

{ #category : #'*RenderThee-Transform' }
DisplayTransform >> isMatrix2x3 [

	^ false
]
