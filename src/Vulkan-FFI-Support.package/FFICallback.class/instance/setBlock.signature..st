initialization
setBlock: aBlock "<BlockClosure>" signature: signature "<String>"

	self
		setArgTypes: (ExternalType lookupTypes: signature)
		evaluableObject: aBlock.