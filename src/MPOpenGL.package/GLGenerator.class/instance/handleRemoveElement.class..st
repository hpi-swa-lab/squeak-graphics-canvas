code generation
handleRemoveElement: anElement class: aVersionClass
	aVersionClass compile: ((anElement attributeAt: #name) , '
	self shouldNotImplement').