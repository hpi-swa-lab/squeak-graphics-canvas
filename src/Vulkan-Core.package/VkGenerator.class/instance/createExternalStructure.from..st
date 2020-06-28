as yet unclassified
createExternalStructure: aClass from: type

	| class |
	self assert: ((type attributeAt: #name) occurrencesOf: Character space) = 0.
	class := ExternalStructure
		subclass: (type attributeAt: #name) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Vulkan-Generated'.
	class class compile: (String streamContents: [:stream |
		stream
			nextPutAll: 'fields';
			cr;
			cr;
			tab;
			nextPutAll: '^ #(';
			crtab.
		type
			tagsNamed: #member
			do: [:member |
				self assert: (member elementAt: #name) contents size = 1.
				self assert: (member elementAt: #type) contents size = 1.
				
				stream
					tab;
					nextPut: $(;
					nextPutAll: (member elementAt: #name) contentString;
					space;
					nextPut: $';
					nextPutAll: (self typeName: (member elementAt: #type) contentString from: member);
					nextPut: $';
					nextPut: $);
					crtab].
		stream nextPutAll: ')'])