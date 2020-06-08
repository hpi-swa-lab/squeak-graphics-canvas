compositing
drawWorld: aWorld

	layerStack := OrderedCollection new.
	^ self newContainerLayerDuring: [self fullDraw: aWorld] ref: aWorld