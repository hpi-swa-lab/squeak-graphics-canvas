examples
example01
	"
	self example01
	"
	| morph canvas |
	morph := Morph new
				addMorph: (TransformMorph new
								addMorph: Morph new;
								offset: 0 @ -10;
								position: 10@10;
								yourself);
				yourself.
	canvas := self record: morph.
	canvas layer open