*MPOpenGL-Shaders
allocate: aNumber type: aType do: aBlock

	| addr |
	addr := ExternalAddress allocate: aNumber.
	^ [aBlock value: (ExternalData
		fromHandle: addr
		type: ExternalType string)] ensure: [addr free].