initialization
setMessage: aMessageSend
	"Fetch the argTypes from <callback: ...> pragma in method."
	
	| method |
	self assert: [aMessageSend receiver notNil].
	
	method := aMessageSend receiver class lookupSelector: aMessageSend selector.
	
	self
		setArgTypes: ((method pragmaAt: #callback:) argumentAt: 1)
		evaluableObject: aMessageSend.