instance creation
fromInteger: anInteger
	"Like the extension in ExternalAddress, but duplicate byte size to follow the alien format as expected in the IA32ABI plugin."

	^ self new
		addressFieldPut: anInteger;
		yourself	