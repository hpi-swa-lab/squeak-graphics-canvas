as yet unclassified
watchExample

	| f m r |
	m := WatchMorph new antialias: true; yourself.
	
	f := Form extent: 700 @ 500 depth: 32.
	r := CompositingCanvas new.
	
	m fullDrawOn: r.
	r root drawOn: (f getCanvas asBalloonCanvas aaLevel: 4).
	f asMorph openInHand