Class {
	#name : #GLCanvasExample,
	#superclass : #LOGLTemplate,
	#instVars : [
		'canvas',
		'morph'
	],
	#category : #'OpenGLCanvas-Examples'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:26'
}
GLCanvasExample class >> browser [

	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #drawOn:)) position: 0 @ 0.
	^ self morph: window
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:29'
}
GLCanvasExample class >> chineseCheckers [

	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self morph: morph
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 14:29'
}
GLCanvasExample class >> drawReference [

	^ self morph: RtDrawReferenceMorph new
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 14:29'
}
GLCanvasExample class >> morph: aMorph [

	^ self new
		morph: aMorph;
		run;
		yourself
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 14:29'
}
GLCanvasExample class >> world [

	^ self morph: ActiveWorld
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
GLCanvasExample >> canvas [

	^ canvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
GLCanvasExample >> canvas: anObject [

	canvas := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 14:31'
}
GLCanvasExample >> initialWindowExtent [

	^ morph extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
GLCanvasExample >> morph [

	^ morph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 14:27'
}
GLCanvasExample >> morph: anObject [

	morph := anObject.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/19/2021 00:20'
}
GLCanvasExample >> render [

	canvas reset.
	canvas fullDraw: morph.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 7/26/2021 13:14'
}
GLCanvasExample >> setUp [

	canvas := GLCanvas
				bounds: morph bounds
				framebuffer: GLFramebuffer default.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/17/2021 13:56'
}
GLCanvasExample >> windowExtentChanged: newExtent [

	super windowExtentChanged: newExtent.
	canvas bounds: morph bounds.
]
