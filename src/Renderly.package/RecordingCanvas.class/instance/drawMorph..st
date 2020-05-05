drawing-general
drawMorph: aMorph

	self newCurrentElement: aMorph during: [self draw: aMorph]