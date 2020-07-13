examples - signatures
getIntWithData: anExternalData1 withData: anExternalData2
	"
	(FFICallback class >> #getIntWithData:withData:) pragmaAt: #callback:
	"
	"<callback: int (*)(void* void*)>"
	
	self shouldNotImplement.