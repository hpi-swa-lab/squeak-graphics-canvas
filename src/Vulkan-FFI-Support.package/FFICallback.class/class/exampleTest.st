examples
exampleTest
	"self exampleTest"
	| cb fn |
	cb := FFICallback
			signature: '<callback: int (*) ()>'
			block: [123].
	
	"void qsort( void *base, size_t number, size_t width, int (__cdecl *compare )(const void *, const void *) );"
	fn := ExternalLibraryFunction
		name: 'callbackTaking' module: 'libtest.so'
		callType: ExternalLibraryFunction callTypeCDecl
		returnType: ExternalType long
		argumentTypes: (ExternalType lookupTypes: #('void*')).
	
	"Invoke!"
	^ fn invokeWith: cb thunk