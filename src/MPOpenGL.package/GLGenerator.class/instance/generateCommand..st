as yet unclassified
generateCommand: anElement
	| name code protoElement |
	
	protoElement := anElement firstTagNamed: #proto.
	name := (protoElement firstTagNamed: #name) contentString.
	(commands includesKey: name) ifFalse: [ ^self ].
	
	code := name.
	(anElement firstTagNamed: #param)
		ifNotNil: [
			anElement tagsNamed: #param do: [ :param | code := code , ': ' , ((param firstTagNamed: #name ) contentString) , ' with' ].
			code := code allButLast: 4].
	
	code := code , '<apicall: ' , (self paramType: protoElement) , ' ''' , name ,  ''' ('.
	anElement tagsNamed: #param do: [ :param |
		code := code , (self paramType: param) , ' ' ].
	code := code withBlanksTrimmed , ') module: ''libGL.so''> ^ self externalCallFailed'.

	(commands at: name) compile: code