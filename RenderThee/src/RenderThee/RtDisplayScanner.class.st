"
A CanvasCharacterScanner is displaying characters onto a Morphic canvas.

Instance Variables
	canvas:		<Canvas>

canvas
	- the canvas on which characters are displayed


"
Class {
	#name : #RtDisplayScanner,
	#superclass : #DisplayScanner,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-Batching',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/24/2022 15:55'
}
RtDisplayScanner >> canvas: aCanvas [
	"set the canvas to draw on"
	canvas := aCanvas.
]

{
	#category : #displaying,
	#'squeak_changestamp' : 'stlu 4/24/2022 16:39'
}
RtDisplayScanner >> defaultTextColor [

	defaultTextColor ifNil: [defaultTextColor := Color white "lol"].
	^ defaultTextColor
]

{
	#category : #displaying,
	#'squeak_changestamp' : 'stlu 4/24/2022 15:55'
}
RtDisplayScanner >> displayEmbeddedForm: aForm [

	canvas
		drawImage: aForm
		at: destX @ (lineY + line baseline - aForm height).
]

{
	#category : #displaying,
	#'squeak_changestamp' : 'stlu 4/24/2022 15:55'
}
RtDisplayScanner >> displayString: string from: startIndex  to: stopIndex at: aPoint [

	canvas 
		drawString: string
		from: startIndex
		to: stopIndex
		at: aPoint
		font: font
		color: foregroundColor.
]

{
	#category : #displaying,
	#'squeak_changestamp' : 'nice 10/12/2013 00:56'
}
RtDisplayScanner >> fillTextBackground [
	"do nothing"
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/24/2022 16:01'
}
RtDisplayScanner >> reset [

	destX := destY := leftMargin := 0.
	ignoreColorChanges := false.
]
