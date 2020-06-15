instance creation
contents: aString from: startIndex to: stopIndex in: boundsRect font: fontOrNil color: aColor

	^ self new
		contents: aString;
		from: startIndex;
		to: stopIndex;
		bounds: boundsRect;
		font: fontOrNil;
		color: aColor;
		yourself