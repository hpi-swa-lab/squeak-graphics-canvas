private
image: aForm at: aPoint sourceRect: sourceRect rule: rule

	self addCommand: (RtDrawImage
							form: aForm
							origin: (aPoint translateBy: self origin negated)
							sourceRect: sourceRect
							rule: rule)