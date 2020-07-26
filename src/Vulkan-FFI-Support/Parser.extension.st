Extension { #name : #Parser }

{ #category : #'*Vulkan-FFI-Support' }
Parser >> callback [
	<pragmaParser>
	
	| descriptorClass retType externalName args argType |
	descriptorClass := ExternalFunction.
	"Parse return type"
	self advance.
	here = 'const' ifTrue: [self advance].
	retType := self externalType: descriptorClass.
	retType == nil ifTrue:[^self expected:'return type'].
	"Parse function name or index"
	externalName := here.

	(self match: #leftParenthesis) ifFalse:[^self expected:'function pointer (*)'].
	(self matchToken: #*) ifFalse:[^self expected:'function pointer (*)'].
	(self match: #rightParenthesis) ifFalse:[^self expected:'function pointer (*)'].

	(self match: #leftParenthesis) ifFalse:[^self expected:'argument list'].
	args := WriteStream on: Array new.
	[self match: #rightParenthesis] whileFalse:[
		here = 'const' ifTrue: [self advance].
		here = ',' ifTrue: [self advance].
		argType := self externalType: descriptorClass.
		argType == nil ifTrue:[^self expected:'argument'].
		argType isVoid & argType isPointerType not ifFalse:[args nextPut: argType]].

	self addPragma: (Pragma keyword: #callback: arguments: {{retType}, args contents}).
	^true
]
