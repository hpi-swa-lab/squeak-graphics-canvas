drawing
line: fromPoint to: toPoint width: anInteger color: aColor 

	currentCommand addCommand: (RtDrawLine new from: fromPoint to: toPoint width: anInteger color: aColor)