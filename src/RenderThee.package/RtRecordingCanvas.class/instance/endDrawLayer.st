private
endDrawLayer

	(self drawLayer notNil and: [self drawLayer isEmpty not]) ifTrue: [
		self layer addChild: self drawLayer.
		self resetDrawLayer]