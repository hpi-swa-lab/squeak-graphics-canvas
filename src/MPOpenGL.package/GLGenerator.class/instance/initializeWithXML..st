initialization
initializeWithXML: xml

	registry := xml firstTagNamed: #registry.
	
	self gatherAllFeatures.
	self gatherAllEnums.
	self gatherAllCommands