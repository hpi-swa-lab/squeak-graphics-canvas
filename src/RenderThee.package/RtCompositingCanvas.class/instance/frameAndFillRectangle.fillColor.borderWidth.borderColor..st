drawing-rectangles
frameAndFillRectangle: aRectangle fillColor: aColor borderWidth: anInteger borderColor: anotherColor 

	currentCommand addCommand: (RtDrawRectangle new rectangle: aRectangle fillColor: aColor borderWidth: anInteger borderColor: anotherColor)