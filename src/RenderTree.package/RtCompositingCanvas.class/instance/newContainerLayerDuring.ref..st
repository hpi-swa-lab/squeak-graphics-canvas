compositing
newContainerLayerDuring: aBlock ref: anObject

	^ (self new: RtContainerLayer during: aBlock ref: anObject)
		offset: anObject position;
		yourself