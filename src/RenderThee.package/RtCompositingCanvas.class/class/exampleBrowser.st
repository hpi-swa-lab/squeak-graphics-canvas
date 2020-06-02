as yet unclassified
exampleBrowser
		
	| f r |
	f := Form extent: 700 @ 500 depth: 32.
	r := RtCompositingCanvas new.
	((ToolBuilder build: Browser new) position: 0 @ 0) fullDrawOn: r.
	r root drawOn: f getCanvas.
	f asMorph openInHand