*Vulkan-FFI-Support-override
lookupTypes: signature
	"
	Supported arguments:
		'<callback: int (*) (double* double*)>' ... pragma as string
		#(int 'double*' 'double*') ... array with type names
		{ ExternalType int. ExternalType double asPointerType. ExternalType double asPointerType } ... array with external types
	"
	
	(signature isString and: [signature first == $<]) ifTrue: [
		^ (Parser new parse: 'foo', String cr, signature class: Object)
			properties pragmas first argumentAt: 1].
	
	signature first isString ifTrue: [
		^ signature collect: [:typeName | self typeNamed: typeName]].
	
	signature first class == ExternalType ifTrue: [
		^ signature].
	
	self error: 'Could not lookup external types from signature'.