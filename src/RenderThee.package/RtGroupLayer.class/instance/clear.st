accessing
clear

	children do: [ :child | child parent: nil ].

	children := OrderedCollection new