examples
exampleCqsortTwo
	"Call the libc qsort function (which requires a callback)."
	"
	FFICallback exampleCqsortTwo
	"
	"(Time millisecondsToRun: [100 timesRepeat: [FFICallback exampleCqsort]]) / 100.0"

	| type rand nElements sizeofDouble values orig sort |

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
		
	"Invoke!"
	self
		qsort: values  with: nElements with: sizeofDouble
		with:  [ :arg1 :arg2 |
				| a  b |
				a := arg1 doubleAt: 1.
				b := arg2 doubleAt: 1.
				Transcript showln: ('Comparing {1} and {2}' format: {a. b}).
				self halt.
				 (a - b) sign].
	
	sort := values collect: [:each | each].
	values getHandle free.
	^orig -> sort