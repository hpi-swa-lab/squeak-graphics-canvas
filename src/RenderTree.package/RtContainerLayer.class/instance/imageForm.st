as yet unclassified
imageForm

	| canvas form |
	form := Form extent: ref extent depth: 32.
	canvas := form getCanvas.
	
	canvas translateBy: offset negated during: [:c |
		self debugDrawOn: c].
	
	^ form