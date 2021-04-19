Class {
	#name : #GLCanvasDisplayScanner,
	#superclass : #DisplayScanner,
	#instVars : [
		'fillBlt'
	],
	#category : #'OpenGLCanvas-Fonts',
	#'squeak_changestamp' : ''
}

{
	#category : #displaying,
	#'squeak_changestamp' : ''
}
GLCanvasDisplayScanner >> displayString: string from: startIndex to: stopIndex at: aPoint [

	fillBlt drawString: string from: startIndex to: stopIndex in: (aPoint extent: (9e8 @ 9e8)) font: font color: foregroundColor
]

{
	#category : #displaying,
	#'squeak_changestamp' : ''
}
GLCanvasDisplayScanner >> fillTextBackground [

	backgroundColor isTransparent ifFalse: [
		fillBlt fillRectangle: (line left @ lineY extent: line width @ line lineHeight) color: backgroundColor]
]

{
	#category : #private,
	#'squeak_changestamp' : ''
}
GLCanvasDisplayScanner >> text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode [

	super text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode.
	fillBlt := blt
]
