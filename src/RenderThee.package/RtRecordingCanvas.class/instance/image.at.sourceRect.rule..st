private
image: aForm at: aPoint sourceRect: sourceRect rule: rule

	self addCommand: (DrawImage
							form: aForm
							origin: aPoint
							sourceRect: sourceRect
							rule: rule)