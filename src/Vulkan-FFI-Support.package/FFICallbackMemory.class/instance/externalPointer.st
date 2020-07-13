accessing
externalPointer
	"Answer the address that points to allocated memory of #byteSize num bytes."
	^ ExternalAddress fromInteger: self addressField