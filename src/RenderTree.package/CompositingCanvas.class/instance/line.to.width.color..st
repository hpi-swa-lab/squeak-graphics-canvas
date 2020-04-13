drawing
line: fromPoint to: toPoint width: anInteger color: aColor 

	currentCommand addCommand: (DrawLine new from: fromPoint to: toPoint width: anInteger color: aColor)