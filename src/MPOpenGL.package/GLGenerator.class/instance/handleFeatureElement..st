as yet unclassified
handleFeatureElement: anElement
	anElement tag = #require ifTrue: [ ^anElement elementsDo: [ :elem | self handleRequireElement: elem]].
	anElement tag = #remove ifTrue: [ ^anElement elementsDo: [ :elem | self handleRemoveElement: elem].].
	self error: 'found element in feature that is neiter require nor remove'.