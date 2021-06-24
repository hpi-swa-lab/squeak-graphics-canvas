Class {
	#name : #RtBatchingExample,
	#superclass : #LOGLTemplate,
	#instVars : [
		'renderer',
		'morph',
		'picture',
		'bounds'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:26'
}
RtBatchingExample class >> browser [

	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #drawOn:)) position: 0 @ 0.
	^ self morph: window
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:30'
}
RtBatchingExample class >> chineseCheckers [

	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self morph: morph
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:09'
}
RtBatchingExample class >> drawReference [

	^ self morph: RtDrawReferenceMorph new
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:08'
}
RtBatchingExample class >> morph: aMorph [

	^ self new
		morph: aMorph;
		run;
		yourself
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:09'
}
RtBatchingExample class >> world [

	^ self morph: ActiveWorld
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtBatchingExample >> initialWindowExtent [

	^ morph extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtBatchingExample >> morph: aMorph [

	morph := aMorph.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:47'
}
RtBatchingExample >> picture [

	^ picture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtBatchingExample >> projectionMatrix [

	^ Matrix4x4
		ortho: morph bounds
		near: 0 far: -100000
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:33'
}
RtBatchingExample >> render [

	renderer projectionMatrix: self projectionMatrix.
	picture := PicPictureCanvas new fullDraw: morph; getPicture.
	renderer render: picture.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatchingExample >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatchingExample >> renderer: anObject [

	renderer := anObject
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/21/2021 17:06'
}
RtBatchingExample >> setUp [

	renderer := RtBatchingRenderer new.
]
