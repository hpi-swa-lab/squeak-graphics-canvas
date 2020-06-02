layers
layer: aContainerLayer at: offset bounds: paintBounds during: aBlock

	| childContext |
	aContainerLayer hasChildren ifTrue: [
		aContainerLayer removeAllChildren].
	self stopRecordingIfNeeded.
	self appendLayer: aContainerLayer.
	childContext := self newChildContext: aContainerLayer bounds: paintBounds.
	aBlock value: childContext value: offset
	self stopRecordingIfNeeded.