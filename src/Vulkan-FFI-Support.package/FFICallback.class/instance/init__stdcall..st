initialization - thunk prepare
init__stdcall: numBytes
	"Initialize the receiver with a __stdcall thunk with numBytes argument bytes."

	FFICallback methodsDo: [:method |
		(method selector beginsWith: 'init__stdcall') ifTrue: [
			(method hasPragma: #init) ifTrue: [
				(method pragmaAt: #abi:)
					ifNotNil: [:pragma | (pragma argumentAt: 1) = abi
						ifTrue: [^ self with: numBytes executeMethod: method]]]]].

	self error: 'Could not initialize thunk for current ABI: ', abi.