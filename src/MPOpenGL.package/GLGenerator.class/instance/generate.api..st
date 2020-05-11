as yet unclassified
generate: xml api: aString
	registry := xml firstTagNamed: #registry.
	api := aString asUppercase.
	
	self rootVersion allSubclassesDo: [ :subclass | subclass removeFromSystem ].
		
	self initTypes.
	self createFeaturesList.
	
	self generateAllEnums.
	self generateAllCommands.
	
	 ^self.
	 