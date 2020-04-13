drawing-text
drawString: aString from: anStartInteger to: anStopInteger in: aRectangle font: aStrikeFont color: aColor 

	currentCommand addCommand: (DrawString new string: aString from: anStartInteger to: anStopInteger in: aRectangle font: aStrikeFont color: aColor)