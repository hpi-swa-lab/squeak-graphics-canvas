Extension { #name : #ExternalData }

{ #category : #'*OpenGL' }
ExternalData class >> allocate: aNumber type: aType do: aBlock [

	| addr |
	addr := ExternalAddress allocate: aNumber.
	^ [aBlock value: (ExternalData
		fromHandle: addr
		type: aType)] ensure: [addr free].
]
