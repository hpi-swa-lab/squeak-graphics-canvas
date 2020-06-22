constants pool
generateConstantsPoolIntializeMethod

	| needsSpacing |
	needsSpacing := true.
	^ String streamContents: [:stream |
		stream nextPutAll: 'initialize'.
		
		registry tagsNamed: #enums do: [:enumsTag |
			needsSpacing ifTrue: [
				stream cr.
				needsSpacing := false].
			enumsTag tagsNamed: #enum do: [:enumTag |
				| name value |
				name := enumTag attributeAt: #name.
				(definedEnums includes: name) ifTrue: [
					needsSpacing := true.
					value := self convertEnumValue: (enumTag attributeAt: #value).
					stream
						cr; tab;
						nextPutAll: name;
						nextPutAll: ' := ';
						nextPutAll: value;
						nextPut: $.]]]]