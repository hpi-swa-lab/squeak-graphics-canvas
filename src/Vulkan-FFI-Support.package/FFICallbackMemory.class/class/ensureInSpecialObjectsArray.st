class initialization
ensureInSpecialObjectsArray
	"FFICallbackMemory must be in the specialObjectsArray to enable the FFI callback mechanism.  Because of
	 the bootstrap the specialObjectsArray may already have been partially initialized with
	 the callback selector and to be large enough (as part of loading immutability), but
	 it will be missing FFICallbackMemory until FFICallbackMemory is loaded.  So check if the specialObjectsArray is
	 of the expected size before recreating and slam FFICallbackMemory in if the specialObjectsArray
	 is already large enough."

	| index |
	self ~~ FFICallbackMemory ifTrue: [^self].

	index := 53.
	((Smalltalk includesKey: #VMObjectIndices)
	 and: [((Smalltalk at: #VMObjectIndices) classPool at: #ClassAlien ifAbsent: []) ~= (index - 1)]) ifTrue:
		[self error: 'index probably wrong'].

	Smalltalk specialObjectsArray size < index ifTrue:
		[Smalltalk recreateSpecialObjectsArray].
	
	Smalltalk specialObjectsArray size < index ifTrue: 
		[self error: 'SystemDictionary>>recreateSpecialObjectsArray appears incompatible'].
	
	((Smalltalk specialObjectsArray at: index) ~~ nil
		and: [(Smalltalk specialObjectsArray at: index) ~~ self]) ifTrue:
			[self error: 'Alien is already installed. You should not load FFI-Callbacks, too.'].

	(Smalltalk specialObjectsArray at: index) ifNil:
		[Smalltalk specialObjectsArray at: index put: self]