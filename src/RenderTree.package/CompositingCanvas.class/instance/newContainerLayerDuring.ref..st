compositing
newContainerLayerDuring: aBlock ref: anObject

	^ (self new: ContainerLayer during: aBlock ref: anObject)
		offset: anObject position;
		yourself