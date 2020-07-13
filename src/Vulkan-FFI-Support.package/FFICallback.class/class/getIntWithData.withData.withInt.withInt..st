examples - signatures
getIntWithData: anExternalData1 withData: anExternalData2 withInt: anInteger1 withInt: anInteger2
	"
	(FFICallback class >> #getIntWithData:withData:withInt:withInt:) pragmaAt: #callback:
	"
	"<callback: int (*)(void* void* uint32_t intptr_t)>"
	
	self shouldNotImplement.
	
	
	self flag: #todo: "Ignore macros, const, and '*,' comma"
	"<signature: #(int CALLBACK (*)(const LOGFONT *, const TEXTMETRIC *, DWORD, LPARAM))>"
