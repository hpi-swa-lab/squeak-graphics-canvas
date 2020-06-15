code generation
generateCommand: anElement

	| name params command code protoElement |
	protoElement := anElement firstTagNamed: #proto.
	name := (protoElement firstTagNamed: #name) contentString.
	command := commands at: name ifAbsent: [^ self].
	
	params := Array streamContents: [:stream |
		anElement tagsNamed: #param do: [:param |
			stream nextPut: param]].
	
	code := String streamContents: [:stream |
		stream nextPutAll: name.
		
		params ifNotEmpty: [stream nextPutAll: ': '].
		params
			do: [:param | stream nextPutAll: ((param firstTagNamed: #name ) contentString)]
			separatedBy: [stream nextPutAll: ' with: '].
		
		stream
			cr; cr; tab;
			nextPutAll: '<apicall: ';
			nextPutAll: (self paramType: protoElement);
			nextPutAll: ' ''';
			nextPutAll: name;
			nextPutAll:  ''' ('.
		
		params
			do: [ :param | stream nextPutAll: (self paramType: param)]
			separatedBy: [stream space].
		
		stream
			nextPutAll: ') module: ''libGL.so''>';
			cr; tab;
			nextPutAll: '^ self externalCallFailed'].

	command compile: code