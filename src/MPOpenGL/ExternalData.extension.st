Extension { #name : #ExternalData }

{ #category : #'*MPOpenGL-Shaders' }
ExternalData class >> allocate: aNumber type: aType do: aBlock [

	| addr |
	addr := ExternalAddress allocate: aNumber.
	^ [aBlock value: (ExternalData
		fromHandle: addr
		type: ExternalType string)] ensure: [addr free].
]
