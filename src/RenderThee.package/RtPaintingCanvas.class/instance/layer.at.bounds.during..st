layers
layer: aContainerLayer at: offset bounds: bounds during: aBlock

	| childCanvas |
	aContainerLayer hasChildren ifTrue: [
		aContainerLayer removeAllChildren].
	self stopRecordingIfNeeded.
	self appendLayer: aContainerLayer.
	childCanvas := self newChildCanvas: aContainerLayer bounds: bounds.
	aBlock value: childCanvas value: offset.
	childCanvas stopRecordingIfNeeded.