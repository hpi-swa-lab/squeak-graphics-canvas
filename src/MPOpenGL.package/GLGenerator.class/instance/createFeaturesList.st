initialization
createFeaturesList
	enums := Dictionary new.
	commands := Dictionary new.
	previousClass := self rootVersion.

	(self findFeatures) do: [ :feature | feature elementsDo: [ :elem | self handleFeatureElement: elem versionNumber: (feature attributeAt: #number)]].