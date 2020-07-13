initialization
setMessage: aMessageSend signature: signature
	"Override the argTypes from <callback: ...> pragma in method."
	
	self assert: [aMessageSend receiver notNil].
	
	self
		setArgTypes: (ExternalType lookupTypes: signature)
		evaluableObject: aMessageSend.