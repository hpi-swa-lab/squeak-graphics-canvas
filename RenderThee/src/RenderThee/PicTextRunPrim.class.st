Class {
	#name : #PicTextRunPrim,
	#superclass : #PicGraphicsPrim,
	#instVars : [
		'contents',
		'startIndex',
		'stopIndex',
		'position',
		'maxExtent',
		'font',
		'fullExtent',
		'rightEdges',
		'textColor'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:07'
}
PicTextRunPrim >> acceptVisitor: aVisitor [

	^ aVisitor visitTextRun: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:46'
}
PicTextRunPrim >> bounds [

	| extent |
	extent := self extent.
	extent > (0@0) ifFalse: [^ nil].
	^ position extent: extent
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 14:41'
}
PicTextRunPrim >> calculateRightEdges [

	| font left |
	font := self font.
	rightEdges := ExternalType float allocate: self length.
	
	left := 0.
	startIndex to: stopIndex do: [:charIndex |
		| char width |
		char := contents at: charIndex.
		width := font widthOf: char.
		left := left + width.
		rightEdges at: charIndex - startIndex + 1 put: left].
	
	fullExtent := left @ font height.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTextRunPrim >> contents [

	^ contents
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTextRunPrim >> contents: anObject [

	contents := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/13/2022 23:05'
}
PicTextRunPrim >> drawOn: aCanvas [

	maxExtent
		ifNil: [
			aCanvas
				drawString: contents
				from: startIndex to: stopIndex
				at: position
				font: font
				color: textColor]
		ifNotNil: [
			aCanvas
				drawString: contents
				from: startIndex to: stopIndex
				in: (position extent: maxExtent)
				font: font
				color: textColor]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:47'
}
PicTextRunPrim >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:43'
}
PicTextRunPrim >> extent [

	^ self maxExtent
		ifNil: [self fullExtent]
		ifNotNil: [:ext | self fullExtent min: ext]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:16'
}
PicTextRunPrim >> font [

	^ font ifNil: [TextStyle defaultFont]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTextRunPrim >> font: anObject [

	font := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:29'
}
PicTextRunPrim >> fullExtent [

	^ self rightEdges last @ font height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:38'
}
PicTextRunPrim >> fullExtent: anObject [

	fullExtent := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/13/2022 23:05'
}
PicTextRunPrim >> isTranslucent [

	^ textColor isTranslucent
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/13/2022 23:05'
}
PicTextRunPrim >> isTransparent [

	^ textColor isTransparent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 14:21'
}
PicTextRunPrim >> length [

	^ stopIndex - startIndex + 1
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:30'
}
PicTextRunPrim >> maxCorner [

	^ maxExtent ifNotNil: [position + maxExtent]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicTextRunPrim >> maxExtent [

	^ maxExtent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicTextRunPrim >> maxExtent: anObject [

	maxExtent := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicTextRunPrim >> position [

	^ position
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicTextRunPrim >> position: anObject [

	position := anObject.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:00'
}
PicTextRunPrim >> renderOn: aRenderer [

	^ aRenderer renderTextRun: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:26'
}
PicTextRunPrim >> rightEdges [

	^ rightEdges ifNil: [
		self calculateRightEdges.
		rightEdges]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicTextRunPrim >> startIndex [

	^ startIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicTextRunPrim >> startIndex: anObject [

	startIndex := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicTextRunPrim >> stopIndex [

	^ stopIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicTextRunPrim >> stopIndex: anObject [

	stopIndex := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:58'
}
PicTextRunPrim >> textColor [

	^ textColor
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:58'
}
PicTextRunPrim >> textColor: anObject [

	textColor := anObject.
]
