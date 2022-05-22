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
	#category : #scanning,
	#'squeak_changestamp' : 'stlu 5/21/2022 13:20'
}
RtDisplayScanner >> displayLine: textLine offset: offset leftInRun: leftInRun [
	"The call on the primitive (scanCharactersFrom:to:in:rightX:) will be interrupted according to an array of stop conditions passed to the scanner at which time the code to handle the stop condition is run and the call on the primitive continued until a stop condition returns true (which means the line has terminated).  leftInRun is the # of characters left to scan in the current run; when 0, it is time to call setStopConditions."
	"Overridden to avoid point creation."
	| stopCondition nowLeftInRun startIndex string lastX lastY lineHeight stop |
	line := textLine.
	morphicOffset := offset.
	lineY := line top + offset y.
	lineHeight := line lineHeight.
	rightMargin := line rightMargin + offset x.
	lastIndex := line first.
	leftInRun <= 0 ifTrue: [self setStopConditions].
	leftMargin := (line leftMarginForAlignment: alignment) + offset x.
	destX := leftMargin.
	self fillTextBackground.
	lastDisplayableIndex := lastIndex := line first.
	leftInRun <= 0
		ifTrue: [nowLeftInRun := text runLengthFor: lastIndex]
		ifFalse: [nowLeftInRun := leftInRun].
	destY := lineY + line baseline - font ascent.
	runStopIndex := lastIndex + (nowLeftInRun - 1) min: line last.
	spaceCount := 0.
	string := text string.
	[
		"reset the stopping conditions of this displaying loop, and also the font."
		stopConditionsMustBeReset
			ifTrue:[self setStopConditions].
		
		"remember where this portion of the line starts"
		startIndex := lastIndex.
		lastX := destX.
		lastY := destY.
		
		"find the end of this portion of the line"
		stopCondition := self scanCharactersFrom: lastIndex to: runStopIndex
						in: string rightX: rightMargin.
		"handle the stop condition - this will also set lastDisplayableIndex"
		stop := self perform: stopCondition.
		
		"display that portion of the line"
		lastDisplayableIndex >= startIndex ifTrue:[
			self displayString: string
				from: startIndex 
				to: lastDisplayableIndex
				left: lastX
				top: lastY].
		
		"if the stop condition were true, stop the loop"
		stop
	] whileFalse.
	^ runStopIndex - lastIndex   "Number of characters remaining in the current run"
]

{
	#category : #displaying,
	#'squeak_changestamp' : 'stlu 5/21/2022 13:25'
}
RtDisplayScanner >> displayString: string from: startIndex  to: stopIndex at: aPoint [

	self halt.
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
	#'squeak_changestamp' : 'stlu 5/21/2022 13:20'
}
RtDisplayScanner >> displayString: string from: startIndex  to: stopIndex left: left top: top [

	canvas
		drawString: string
		from: startIndex
		to: stopIndex
		left: left
		top: top
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
