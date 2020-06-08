drawing-ovals
fillOval: aRectangle color: aColor borderWidth: anInteger borderColor: borderColor 

	currentCommand addCommand: (RtDrawOval new rectangle: aRectangle color: aColor borderWidth: anInteger borderColor: borderColor)