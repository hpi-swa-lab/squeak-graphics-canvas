Class {
	#name : #PicCanvasDisplayScanner,
	#superclass : #DisplayScanner,
	#instVars : [
		'fillBlt'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #displaying }
PicCanvasDisplayScanner >> displayString: string from: startIndex to: stopIndex at: aPoint [

	fillBlt drawString: string from: startIndex to: stopIndex in: (aPoint extent: (9e8 @ 9e8)) font: font color: foregroundColor
]

{ #category : #displaying }
PicCanvasDisplayScanner >> fillTextBackground [

	backgroundColor isTransparent ifFalse: [
		fillBlt fillRectangle: (line left @ lineY extent: line width @ line lineHeight) color: backgroundColor]
]

{ #category : #private }
PicCanvasDisplayScanner >> text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode [

	super text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode.
	fillBlt := blt
]
