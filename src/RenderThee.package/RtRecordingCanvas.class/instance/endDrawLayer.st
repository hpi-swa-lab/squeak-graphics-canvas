private
endDrawLayer

	(self drawLayer notNil and: [self drawLayer isEmpty not]) ifTrue: [
		self layer addChild: (self drawLayer
			transform: Matrix4x4 identity;
			extent: self layer extent;
			yourself).
		self resetDrawLayer]