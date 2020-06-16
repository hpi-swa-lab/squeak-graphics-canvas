drawing-general
fullDrawMorph: aMorph

	aMorph isRepaintBoundary
		ifTrue: [	self fullDrawInNewLayer: aMorph]
		ifFalse: [self fullDrawInCurrentLayer: aMorph]