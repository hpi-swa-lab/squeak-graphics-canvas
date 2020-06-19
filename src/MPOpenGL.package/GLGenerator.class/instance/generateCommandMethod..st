code generation
generateCommandMethod: commandTag

	| name params protoTag |
	protoTag := commandTag firstTagNamed: #proto.
	name := (protoTag firstTagNamed: #name) contentString.
	
	params := Array streamContents: [:stream |
		commandTag tagsNamed: #param do: [:param |
			stream nextPut: param]].
	
	^ String streamContents: [:stream |
		stream nextPutAll: name.
		
		params ifNotEmpty: [stream nextPutAll: ': '].
		params
			do: [:param | stream nextPutAll: ((param firstTagNamed: #name ) contentString)]
			separatedBy: [stream nextPutAll: ' with: '].
		
		stream
			cr; cr; tab;
			nextPutAll: '<apicall: ';
			nextPutAll: (self paramType: protoTag);
			nextPutAll: ' ''';
			nextPutAll: name;
			nextPutAll:  ''' ('.
		
		params
			do: [ :param | stream nextPutAll: (self paramType: param)]
			separatedBy: [stream space].
		
		stream
			nextPutAll: ')>';
			cr; tab;
			nextPutAll: '^ self externalCallFailed']