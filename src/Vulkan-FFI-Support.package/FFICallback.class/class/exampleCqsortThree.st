examples
exampleCqsortThree
	"Call the libc qsort function (which requires a callback)."
	"
	FFICallback exampleCqsortThree
	"
	"(Time millisecondsToRun: [100 timesRepeat: [FFICallback exampleCqsort]]) / 100.0"

	| type rand nElements sizeofDouble values orig sort cb |

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
				self halt.
				 (a - b) sign].
	
		
	"Invoke!"
	self
		cdeclQsort: values  with: nElements with: sizeofDouble
		with: cb thunk.
	
	sort := values collect: [:each | each].
	values getHandle free.
	^orig -> sort