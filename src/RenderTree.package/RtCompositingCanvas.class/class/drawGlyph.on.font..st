as yet unclassified
drawGlyph: aGlyph on: aCanvas font: aFontDescription

	| canvas ascender scale |
	" copied from TTGylph>>asFromWithScale..., no direct draw method sadly "
	canvas := aCanvas asBalloonCanvas.
	scale := 0.1.
	ascender := 100.
	
	canvas transformBy: (MatrixTransform2x3 withScale: scale asPoint * (1 @ -1)).
	canvas transformBy: (MatrixTransform2x3 withOffset: 0 @ aFontDescription ascender negated).
	canvas
		drawGeneralBezierShape: aGlyph contours
		color: Color black 
		borderWidth: 0 
		borderColor: Color black.
	
	"((code bitAnd: 4) ~= 0 or: [(code bitAnd: 16) ~= 0]) ifTrue: [
		newScale := (form width + 1) asFloat / lineGlyph calculateWidth asFloat.
		canvas transformBy: (MatrixTransform2x3 withScale: (newScale / scale)@1.0).

		(code bitAnd: 4) ~= 0 ifTrue: [
			canvas
				drawGeneralBezierShape: lineGlyph contours
				color: fgColor 
				borderWidth: 0 
				borderColor: fgColor.
		].

		(code bitAnd: 16) ~= 0 ifTrue: [
			canvas transformBy: (MatrixTransform2x3 withOffset: 0@(ascender // 2)).
			canvas
				drawGeneralBezierShape: lineGlyph contours
				color: fgColor 
				borderWidth: 0 
				borderColor: fgColor.
		].
	]."
	