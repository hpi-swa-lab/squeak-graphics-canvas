Class {
	#name : #PicStringNode,
	#superclass : #PicPrimitiveNode,
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
PicStringNode >> acceptVisitor: aVisitor [

	aVisitor visitString: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:46'
}
PicStringNode >> bounds [

	| extent |
	extent := self extent.
	extent > (0@0) ifFalse: [^ nil].
	^ position extent: extent
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 14:41'
}
PicStringNode >> calculateRightEdges [

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
PicStringNode >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringNode >> color: anObject [

	color := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringNode >> contents [

	^ contents
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringNode >> contents: anObject [

	contents := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/25/2021 13:52'
}
PicStringNode >> drawOn: aCanvas [

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
PicStringNode >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:43'
}
PicStringNode >> extent [

	^ self maxExtent
		ifNil: [self fullExtent]
		ifNotNil: [:ext | self fullExtent min: ext]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:16'
}
PicStringNode >> font [

	^ font ifNil: [TextStyle defaultFont]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringNode >> font: anObject [

	font := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:29'
}
PicStringNode >> fullExtent [

	^ self rightEdges last @ font height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:38'
}
PicStringNode >> fullExtent: anObject [

	fullExtent := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:14'
}
PicStringNode >> isTranslucent [

	^ color isTranslucent
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:09'
}
PicStringNode >> isTransparent [

	^ color isTransparent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 14:21'
}
PicStringNode >> length [

	^ stopIndex - startIndex + 1
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:30'
}
PicStringNode >> maxCorner [

	^ maxExtent ifNotNil: [position + maxExtent]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicStringNode >> maxExtent [

	^ maxExtent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicStringNode >> maxExtent: anObject [

	maxExtent := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicStringNode >> position [

	^ position
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicStringNode >> position: anObject [

	position := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:26'
}
PicStringNode >> rightEdges [

	^ rightEdges ifNil: [
		self calculateRightEdges.
		rightEdges]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringNode >> startIndex [

	^ startIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringNode >> startIndex: anObject [

	startIndex := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringNode >> stopIndex [

	^ stopIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringNode >> stopIndex: anObject [

	stopIndex := anObject.
]
