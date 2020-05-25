drawing-support
transformBy: aDisplayTransform clippingTo: localClipRect during: aBlock smoothing: cellSize

	aDisplayTransform isPureTranslation ifTrue: [
		^ self
			translateBy: aDisplayTransform offset negated truncated
			clippingTo: localClipRect
			during: aBlock].
	
	self
		newCurrentLayer: (DrawTransformLayer
							transform: aDisplayTransform
							bounds: localClipRect
							smoothing: cellSize)
		during: aBlock