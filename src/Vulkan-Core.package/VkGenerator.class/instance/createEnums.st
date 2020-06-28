as yet unclassified
createEnums

	registry
		tagsNamed: #enums
		do: [:enums | | class |
			class := bitmaskTypes
				at: (enums attributeAt: #name)
				ifAbsent: [
					self createTypedef: (self enumNameFor: (enums attributeAt: #name)) type: 'long'].
			enums
				tagsNamed: #enum
				do: [:enum |
					class class compile: (String streamContents: [:stream |
						stream
							nextPutAll: (enum attributeAt: #name);
							cr;
							cr;
							tab;
							nextPutAll: '^ self on: ('.
						self printValueOf: enum on: stream.
						stream nextPut: $)])]]