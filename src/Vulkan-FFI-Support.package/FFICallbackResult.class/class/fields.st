field definition
fields
	"
	self defineFields.
	"
	^ #(
		(booleanResult			'bool')
		(floatResult				'double')
		(positiveIntegerResult	'uintptr_t')
		(integerResult			'intptr_t')
	)