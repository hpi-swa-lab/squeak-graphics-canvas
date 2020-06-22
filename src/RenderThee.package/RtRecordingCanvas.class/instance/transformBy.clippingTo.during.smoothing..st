drawing-support
transformBy: aDisplayTransform clippingTo: localClipRect during: aBlock smoothing: cellSize

	aDisplayTransform isPureTranslation ifTrue: [
		^ self
			translateBy: aDisplayTransform offset negated truncated
			clippingTo: localClipRect
			during: aBlock].
	
	self notYetImplemented.
	self flag: #todo. "disregarding localClipRect origin"
	self
		newCurrentLayer: (RtBoundaryLayer
							transform: (aDisplayTransform asMatrix4x4 translation: localClipRect origin asVector3)
							extent: localClipRect extent)
		newOrigin: aDisplayTransform offset
		during: aBlock