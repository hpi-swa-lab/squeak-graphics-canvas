examples - signatures
getIntWithInt: anInteger withString: aString
	"
	(FFICallback class >> #getIntWithInt:withString:) pragmaAt: #callback:
	"
	"<callback: int (*)(int char *)>"

	self shouldNotImplement.