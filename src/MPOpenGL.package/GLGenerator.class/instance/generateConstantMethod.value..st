constants pool
generateConstantMethod: name value: valueString

	^ String streamContents: [:stream |
		stream
			nextPutAll: name;
			cr; cr; tab;
			nextPut: $^;
			space;
			nextPutAll: valueString]