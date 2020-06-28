as yet unclassified
createCommandMethod: commandTag

	| protoTag params string |
	
	(commandTag attributeAt: #alias) ifNotNil: [^ self createCommandAlias: commandTag].
	
	protoTag := commandTag firstTagNamed: #proto.
	params := Array streamContents: [:stream |
		commandTag tagsNamed: #param childrenDo: [:param | stream nextPut: param]].
	
	^ self getAPIClass compile: (String streamContents: [:stream | | name |
		name := (protoTag firstTagNamed: #name) contentString.
		stream nextPutAll: (self signatureStringFor: name params: params).
		
		stream
			cr;
			crtab;
			nextPutAll: '<apicall: ';
			nextPutAll: (self paramType: protoTag);
			nextPutAll: ' ''';
			nextPutAll: name;
			nextPutAll: ''' ('.
		params do: [:param | stream nextPutAll: (self paramType: param)] separatedBy: [stream space].
		stream
			nextPutAll: ')>';
			cr;
			tab;
			nextPutAll: '^ self externalCallFailed'])