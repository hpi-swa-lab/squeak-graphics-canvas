Class {
	#name : #GLCanvasDisplayScanner,
	#superclass : #DisplayScanner,
	#instVars : [
		'fillBlt'
	],
	#category : #'OpenGLCanvas-Fonts',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasDisplayScanner >> displayString: string from: startIndex to: stopIndex at: aPoint [

	fillBlt drawString: string from: startIndex to: stopIndex in: (aPoint extent: (9e8 @ 9e8)) font: font color: foregroundColor
]

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasDisplayScanner >> fillTextBackground [

	backgroundColor isTransparent ifFalse: [
		fillBlt fillRectangle: (line left @ lineY extent: line width @ line lineHeight) color: backgroundColor]
]

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasDisplayScanner >> text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode [
	super text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode.
	fillBlt := blt
]
