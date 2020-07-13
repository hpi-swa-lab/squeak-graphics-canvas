examples - signatures
getVoidWithData: anExternalData withDouble: aFloat withDouble: anotherFloat
	"
	(FFICallback class >> #getVoidWithData:withDouble:withDouble:) pragmaAt: #callback:
	"
	"<callback: void (*)(void* double double)>"
	
	self shouldNotImplement.