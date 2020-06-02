balloon-support
fullDrawMorph: aMorph

	aMorph wantsOwnLayer
		ifTrue: [self newContainerLayerDuring: [self fullDraw: aMorph] ref: aMorph]
		ifFalse: [super fullDrawMorph: aMorph]