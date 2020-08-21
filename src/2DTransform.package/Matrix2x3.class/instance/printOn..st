printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut: $(;
		print: a11; tab; print: a12; tab; print: a13;
		cr; print: a21; tab; print: a22; tab; print: a23;
		nextPut:$).