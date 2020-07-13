examples
exampleCqsort
	"Call the libc qsort function (which requires a callback)."
	"FFICallback exampleCqsort"
	"(Time millisecondsToRun: [100 timesRepeat: [FFICallback exampleCqsort]]) / 100.0"

	| type cb rand nElements sizeofDouble values orig sort libcName knownLibcNames fn |

	knownLibcNames := #('libobjc.dylib' 'libgcc_s.1.dylib' 'libc.dylib' 'libc.so.6' 'libc.so' 'msvcrt.dll').
	libcName := Project uiManager chooseFrom: knownLibcNames title: 'Choose your libc'.
	libcName = 0 ifTrue: [^ self].
	libcName := knownLibcNames at: libcName.

	rand := Random new.
	type := ExternalType double.
	sizeofDouble := type byteSize.
	nElements := 10.
	values := ExternalData
		fromHandle: (ExternalAddress allocate: nElements * sizeofDouble)
		type: type asPointerType.
	"Initialize external data and set size for enumeration."
	1 to: nElements do: [:i| values at: i put: rand next].
	values size: nElements.
	"Fetch a local copy of the external data."
	orig := values collect: [:each | each].
	
	"Construct the callback structure."
	cb := FFICallback
			signature: '<callback: int (*)(double* double*)>'
			"signature: #(int 'double*' 'double*')"
			block: [ :arg1 :arg2 |
				| a  b |
				a := arg1 doubleAt: 1.
				b := arg2 doubleAt: 1.
				Transcript showln: ('Comparing {1} and {2}' format: {a. b}).
				"self halt."
				 (a - b) sign].
	
	"void qsort( void *base, size_t number, size_t width, int (__cdecl *compare )(const void *, const void *) );"
	fn := ExternalLibraryFunction
		name: 'qsort' module: libcName
		callType: ExternalLibraryFunction callTypeCDecl
		returnType: ExternalType void
		argumentTypes: (ExternalType lookupTypes: #('void*' size_t size_t 'void*')).
	
	"Invoke!"
	fn invokeWith: values "getHandle" with: nElements with: sizeofDouble with: cb thunk "getHandle".
	
	sort := values collect: [:each | each].
	values getHandle free.
	^orig -> sort