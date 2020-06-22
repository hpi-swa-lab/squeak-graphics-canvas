constants pool
generateConstantsPool

	| pool |
	pool := self generateConstantsPoolClass.
	pool theMetaClass
		compile: self generateConstantsPoolIntializeMethod
		classified: 'initialization'.
	pool initialize