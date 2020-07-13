callback
setResult: anObject inContext: aCallbackContext
	"Set the result in the callback context. Add some fast checks to detect errors."
	
	argTypes first atomicType = 0 "void"
		ifTrue: [
			"Quick exit for void return type."
			^ aCallbackContext voidResult].

	anObject isInteger
		ifTrue: [
			self assert: [argTypes first isIntegerType].
			^ aCallbackContext wordResult: anObject].

	anObject isBoolean
		ifTrue: [
			self assert: [argTypes first atomicType = 1 "bool"].
			^ aCallbackContext wordResult: anObject].		

	anObject isFloat
		ifTrue: [
			self assert: [argTypes first atomicType >= 12 "float/double"].			
			^ aCallbackContext floatResult: anObject].

	"Try to push pointer for external object."
	^ aCallbackContext externalObjectResult: anObject