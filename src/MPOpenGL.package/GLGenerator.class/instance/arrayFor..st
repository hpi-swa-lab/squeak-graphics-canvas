as yet unclassified
arrayFor: anElement
	anElement tag = #enum ifTrue: [ ^enums ].
	anElement tag = #command ifTrue: [ ^commands ].
	anElement tag = #type ifTrue: [ ^Set new ].
	self error: 'found something in a feature that is not an element or command or type.'