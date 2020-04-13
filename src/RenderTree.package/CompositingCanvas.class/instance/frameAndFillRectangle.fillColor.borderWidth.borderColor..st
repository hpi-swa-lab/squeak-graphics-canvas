drawing-rectangles
frameAndFillRectangle: aRectangle fillColor: aColor borderWidth: anInteger borderColor: anotherColor 

	currentCommand addCommand: (DrawRectangle new rectangle: aRectangle fillColor: aColor borderWidth: anInteger borderColor: anotherColor)