instance creation
record: aMorph

	^ (self rootWithExtent: aMorph extent)
		record: aMorph;
		yourself