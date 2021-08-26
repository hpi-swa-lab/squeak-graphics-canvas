Class {
	#name : #PicString,
	#superclass : #PicDrawing,
	#instVars : [
		'contents',
		'startIndex',
		'stopIndex',
		'position',
		'maxExtent',
		'font',
		'color',
		'fullExtent',
		'rightEdges'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicString >> acceptVisitor: aVisitor [

	aVisitor visitString: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:46'
}
PicString >> bounds [

	| extent |
	extent := self extent.
	extent > (0@0) ifFalse: [^ nil].
	^ position extent: extent
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 14:41'
}
PicString >> calculateRightEdges [

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
PicString >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicString >> color: anObject [

	color := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicString >> contents [

	^ contents
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicString >> contents: anObject [

	contents := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/25/2021 13:52'
}
PicString >> drawOn: aCanvas [

	maxExtent
		ifNil: [
			aCanvas
				drawString: contents
				from: startIndex to: stopIndex
				at: position
				font: font
				color: color]
		ifNotNil: [
			aCanvas
				drawString: contents
				from: startIndex to: stopIndex
				in: (position extent: maxExtent)
				font: font
				color: color]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:47'
}
PicString >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:43'
}
PicString >> extent [

	^ self maxExtent
		ifNil: [self fullExtent]
		ifNotNil: [:ext | self fullExtent min: ext]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:07'
}
PicString >> font [

	^ font ifNil: [font := TextStyle defaultFont]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicString >> font: anObject [

	font := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:29'
}
PicString >> fullExtent [

	^ self rightEdges last @ font height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:38'
}
PicString >> fullExtent: anObject [

	fullExtent := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:14'
}
PicString >> isTranslucent [

	^ color isTranslucent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 14:21'
}
PicString >> length [

	^ stopIndex - startIndex + 1
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:30'
}
PicString >> maxCorner [

	^ maxExtent ifNotNil: [position + maxExtent]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicString >> maxExtent [

	^ maxExtent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicString >> maxExtent: anObject [

	maxExtent := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicString >> position [

	^ position
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicString >> position: anObject [

	position := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:26'
}
PicString >> rightEdges [

	^ rightEdges ifNil: [
		self calculateRightEdges.
		rightEdges]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicString >> startIndex [

	^ startIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicString >> startIndex: anObject [

	startIndex := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicString >> stopIndex [

	^ stopIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicString >> stopIndex: anObject [

	stopIndex := anObject.
]
