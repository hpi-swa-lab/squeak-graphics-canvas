initialization - thunk prepare
init__ccall
	"Initialize the receiver with a __ccall thunk."

	FFICallback methodsDo: [:method |
		(method selector beginsWith: 'init__ccall') ifTrue: [
			(method hasPragma: #init) ifTrue: [
				(method pragmaAt: #abi:)
					ifNotNil: [:pragma | (pragma argumentAt: 1) = abi
						ifTrue: [^ self executeMethod: method]]]]].

	self error: 'Could not initialize thunk for current ABI: ', abi.