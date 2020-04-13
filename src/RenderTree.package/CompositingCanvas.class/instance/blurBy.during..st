drawing-composited
blurBy: aNumber during: aBock

	self new: BlurLayer during: [aBock value: self] ref: nil