as yet unclassified
fontExample

	| glyph f r font |
	r := CompositingCanvas new.
	font := (TextStyle named: 'BitstreamVeraSans') fonts first ttcDescription.
	glyph := font at: $h.
	self drawGlyph: glyph on: r font: font.
	
	f := Form extent: 700 @ 500 depth: 32.
	r root drawOn: (f getCanvas asBalloonCanvas aaLevel: 4).
	f asMorph openInHand