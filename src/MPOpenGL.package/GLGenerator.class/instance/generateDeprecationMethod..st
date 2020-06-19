code generation
generateDeprecationMethod: name

	^ name , '

	self shouldNotImplement'