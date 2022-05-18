Class {
	#name : #PicCanvasReplay,
	#superclass : #PicVisitor,
	#instVars : [
		'canvas',
		'endReached'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:06'
}
PicCanvasReplay >> canvas [

	^ canvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:06'
}
PicCanvasReplay >> canvas: anObject [

	canvas := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:50'
}
PicCanvasReplay >> initialize [

	endReached := false.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:59'
}
PicCanvasReplay >> visitClipBegin: aNode [

	| previousCanvas |
	previousCanvas := canvas.
	canvas clipBy: aNode clipRect during: [:newCanvas |
		canvas := newCanvas.
		self visitUntilEndReached].
	endReached := false.
	canvas := previousCanvas.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:41'
}
PicCanvasReplay >> visitClipEnd: aNode [

	endReached := true.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitImage: aNode [

	 aNode drawOn: canvas.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitLine: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitOval: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitParagraph: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:50'
}
PicCanvasReplay >> visitPictureBegin: aNode [

	self visitTranslationBegin: aNode.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:50'
}
PicCanvasReplay >> visitPictureEnd: aNode [

	endReached := true.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitPolygon: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitRectangle: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitRoundedRectangle: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:28'
}
PicCanvasReplay >> visitTextRun: aNode [

	aNode drawOn: canvas.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 17:54'
}
PicCanvasReplay >> visitTransformBegin: aNode [

	| previousCanvas |
	previousCanvas := canvas.
	canvas transformBy: aNode transform during: [:newCanvas |
		canvas := newCanvas.
		self visitUntilEndReached].
	endReached := false.
	canvas := previousCanvas.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:41'
}
PicCanvasReplay >> visitTransformEnd: aNode [

	endReached := true.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 17:54'
}
PicCanvasReplay >> visitTranslationBegin: aNode [

	| previousCanvas |
	previousCanvas := canvas.
	canvas translateBy: aNode translation during: [:newCanvas |
		canvas := newCanvas.
		self visitUntilEndReached].
	endReached := false.
	canvas := previousCanvas.
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:41'
}
PicCanvasReplay >> visitTranslationEnd: aNode [

	endReached := true.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:59'
}
PicCanvasReplay >> visitUntilEndReached [

	[endReached] whileFalse: [
		currentNode := currentNode next.
		currentNode acceptVisitor: self].
]
