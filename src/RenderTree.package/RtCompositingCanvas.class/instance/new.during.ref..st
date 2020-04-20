compositing
new: aLayerClass during: aBlock ref: anObject

	| container |
	self endCurrentDrawLayer.
	
	layerStack add: (container := aLayerClass new ref: anObject).
	aBlock value.
	self endCurrentDrawLayer.
	
	layerStack removeLast.
	layerStack ifNotEmpty: [layerStack last append: container].
	^ container