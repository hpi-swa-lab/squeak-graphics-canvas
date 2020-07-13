executable pages
allocateExecutablePage
	"Forward allocation to ExternalAddress, which already sends primitives to allocate memory."
	
	^ ExternalAddress allocateExecutablePage