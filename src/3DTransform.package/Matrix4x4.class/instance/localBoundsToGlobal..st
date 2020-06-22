transforming
localBoundsToGlobal: aRectangle

	^Rectangle encompassing: (self globalPointsToLocal: aRectangle corners)

	