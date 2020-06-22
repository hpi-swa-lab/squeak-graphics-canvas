*RenderThee
redrawLayer
	self drawLayer ifNotNil: [:layer |
                | rc |
                layer clear.
                layer invalidateCache.
                layer setBounds: self bounds.
                rc := RtRecordingCanvas layer: layer.
                rc fullDraw: self]