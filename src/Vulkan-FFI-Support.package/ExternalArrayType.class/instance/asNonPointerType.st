as yet unclassified
asNonPointerType

	^ "ExternalArrayType new
		type: type asNonPointerType;
		numberOfItems: self numberOfItems;
		yourself"type asNonPointerType