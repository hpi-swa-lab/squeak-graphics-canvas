as yet unclassified
drawOn: aCanvas

	| fills |
	aCanvas ensuredEngine edgeTransform: (aCanvas instVarNamed: #transform).
	aCanvas ensuredEngine resetIfNeeded.
	fills := aCanvas ensuredEngine registerFill: color and: borderColor.
	
	commands do: [:command |
		command drawAsPartOfShapeGroupOn: aCanvas fills: fills.
		aCanvas ensuredEngine primFlushNeeded: false].
	aCanvas ensuredEngine primFlushNeeded: true; postFlushIfNeeded