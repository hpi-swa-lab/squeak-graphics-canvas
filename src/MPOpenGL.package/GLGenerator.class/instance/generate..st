as yet unclassified
generate: xml
	GL methodDictionary removeAll.
	GL class methodDictionary removeAll.
	
	registry := xml firstTagNamed: #registry.
		
	self initTypes.
	self createFeaturesList.
	
	self generateAllEnums.
	self generateAllCommands.
	
	 ^self.
	 