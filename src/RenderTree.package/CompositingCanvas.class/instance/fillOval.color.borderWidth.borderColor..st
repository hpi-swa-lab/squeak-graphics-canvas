drawing-ovals
fillOval: aRectangle color: aColor borderWidth: anInteger borderColor: borderColor 

	currentCommand addCommand: (DrawOval new rectangle: aRectangle color: aColor borderWidth: anInteger borderColor: borderColor)