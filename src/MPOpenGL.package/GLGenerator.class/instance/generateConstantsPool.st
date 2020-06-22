constants pool
generateConstantsPool

	| pool |
	pool := self generateConstantsPoolClass.
	pool theMetaClass
		compile: self generateConstantsPoolIntializeMethod
		classified: 'initialization'.
	pool initialize.
	definedEnums do: [:name |
		pool theMetaClass
			compile: (self generateConstantMethod: name value: name)
			classified: 'accessing']