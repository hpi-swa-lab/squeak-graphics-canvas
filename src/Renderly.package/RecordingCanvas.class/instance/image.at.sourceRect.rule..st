private
image: aForm at: aPoint sourceRect: sourceRect rule: rule

	self commands add: (DrawImage
							form: aForm
							origin: aPoint
							sourceRect: sourceRect
							rule: rule)