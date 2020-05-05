as yet unclassified
createFeaturesList
	enums := Set new.
	commands := Set new.
	(self findFeaturesApi: 'gl' version: '4.2') do: [ :feature | feature elementsDo: [ :elem | self handleFeatureElement: elem]]