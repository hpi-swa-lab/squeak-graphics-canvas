Extension { #name : #DisplayTransform }

{
	#category : #'*3DTransform',
	#timestamp : ''
}
DisplayTransform >> asMatrix2x3 [

	^ self asMatrixTransform2x3 asMatrix2x3
]

{
	#category : #'*3DTransform',
	#timestamp : ''
}
DisplayTransform >> isMatrix2x3 [

	^ false
]
