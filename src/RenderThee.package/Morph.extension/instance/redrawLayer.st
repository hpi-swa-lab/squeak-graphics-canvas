*RenderThee
redrawLayer

	self assert: self isRepaintBoundary.
	
	self groupLayer ifNotNil: [:layer | | rc |
		layer parent ifNil: [^ self].
		layer clear.
		layer bounds: (self bounds translateBy: layer parent bounds origin negated).
		
		rc := RtRecordingCanvas layer: layer.
		rc origin: self position.
		rc fullDraw: self.
		rc endDrawLayer.
		
		layer invalidateCache]