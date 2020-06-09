private
endDrawLayer

	self currentDrawLayer commands ifNotEmpty: [
		self layer addChild: self currentDrawLayer.
		currentDrawLayer := nil]