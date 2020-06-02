drawing-composited
blurBy: aNumber during: aBock

	self new: RtBlurLayer during: [aBock value: self] ref: nil