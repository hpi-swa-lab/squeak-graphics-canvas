callback result
externalObjectResult: anExternalObject
	"ExternalStructure, ExternalUnion, ExternalData ... handle MUST BE an ExternalAddress"
	
	^ self pointerResult: anExternalObject getHandle