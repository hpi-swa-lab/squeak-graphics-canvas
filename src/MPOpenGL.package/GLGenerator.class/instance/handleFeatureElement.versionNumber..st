code generation
handleFeatureElement: anElement versionNumber: aString
	| class |
	class := self featureClass: anElement versionNumber: aString.
	anElement tag = #require ifTrue: [ ^anElement elementsDo: [ :elem | self handleRequireElement: elem class: class]].
	anElement tag = #remove ifTrue: [ ^anElement elementsDo: [ :elem | self handleRemoveElement: elem class: class].].
	self error: 'found element in feature that is neiter require nor remove'.