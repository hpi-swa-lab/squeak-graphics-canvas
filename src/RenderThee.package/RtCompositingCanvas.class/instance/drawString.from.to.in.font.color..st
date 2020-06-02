drawing-text
drawString: aString from: anStartInteger to: anStopInteger in: aRectangle font: aStrikeFont color: aColor 

	currentCommand addCommand: (RtDrawString new string: aString from: anStartInteger to: anStopInteger in: aRectangle font: aStrikeFont color: aColor)