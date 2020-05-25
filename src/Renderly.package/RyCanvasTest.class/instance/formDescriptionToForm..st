helpers
formDescriptionToForm: aString

	| lines colors |
	lines := aString lines.
	colors := lines gather: [:line |
				line
					collect: [:char | (self colorNamed: char) pixelValue32]
					as: OrderedCollection].
	^ Form
		extent: lines first size @ lines size
		depth: 32
		fromArray: colors offset: 0@0