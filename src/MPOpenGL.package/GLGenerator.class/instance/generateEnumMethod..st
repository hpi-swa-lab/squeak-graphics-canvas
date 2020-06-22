constants pool
generateEnumMethod: enumTag

	| name value |
	name := enumTag attributeAt: #name.
	
	value := self convertEnumValue: (enumTag attributeAt: #value).
	
	^ String streamContents: [:stream |
		stream
			nextPutAll: name;
			cr; cr; tab;
			nextPut: $^;
			space;
			nextPutAll: value]