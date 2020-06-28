as yet unclassified
createCommandAlias: commandTag

	^ self getAPIClass compile: (String streamContents: [:stream | | params |
		params := Array streamContents: [:strList |
			(self commandDefinitionFor: (commandTag attributeAt: #alias)) tagsNamed: #params childrenDo: [:child | strList nextPut: child]].
		stream
			nextPutAll: (self signatureStringFor: (commandTag attributeAt: #name) params: #());
			crtab;
			nextPutAll: '^ self ';
			nextPutAll: (self signatureStringFor: (commandTag attributeAt: #alias) params: #())])