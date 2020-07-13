callback
valueInContext: callbackContext "<FFICallbackContext> ^<Integer>"
	
	FFICallback methodsDo: [:method |
		(method hasPragma: #evaluator) ifTrue: [
			(method pragmaAt: #abi:)
				ifNotNil: [:pragma | (pragma argumentAt: 1) = abi
					ifTrue: [^ self with: callbackContext executeMethod: method]]]].
		
	self error: 'Could find evaluator for current ABI: ', abi.