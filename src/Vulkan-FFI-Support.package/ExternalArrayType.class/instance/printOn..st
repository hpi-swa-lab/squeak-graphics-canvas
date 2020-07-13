as yet unclassified
printOn: aStream

	type printOn: aStream.
	aStream
		nextPut: $[;
		print: self numberOfItems;
		nextPut: $]