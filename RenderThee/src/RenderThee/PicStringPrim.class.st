Class {
	#name : #PicStringPrim,
	#superclass : #PicGraphicsPrim,
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
PicStringPrim >> acceptVisitor: aVisitor [

	aVisitor visitString: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:46'
}
PicStringPrim >> bounds [

	| extent |
	extent := self extent.
	extent > (0@0) ifFalse: [^ nil].
	^ position extent: extent
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 14:41'
}
PicStringPrim >> calculateRightEdges [

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
PicStringPrim >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringPrim >> color: anObject [

	color := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringPrim >> contents [

	^ contents
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringPrim >> contents: anObject [

	contents := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/25/2021 13:52'
}
PicStringPrim >> drawOn: aCanvas [

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
PicStringPrim >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:43'
}
PicStringPrim >> extent [

	^ self maxExtent
		ifNil: [self fullExtent]
		ifNotNil: [:ext | self fullExtent min: ext]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:16'
}
PicStringPrim >> font [

	^ font ifNil: [TextStyle defaultFont]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicStringPrim >> font: anObject [

	font := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:29'
}
PicStringPrim >> fullExtent [

	^ self rightEdges last @ font height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:38'
}
PicStringPrim >> fullExtent: anObject [

	fullExtent := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:14'
}
PicStringPrim >> isTranslucent [

	^ color isTranslucent
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:09'
}
PicStringPrim >> isTransparent [

	^ color isTransparent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 14:21'
}
PicStringPrim >> length [

	^ stopIndex - startIndex + 1
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:30'
}
PicStringPrim >> maxCorner [

	^ maxExtent ifNotNil: [position + maxExtent]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicStringPrim >> maxExtent [

	^ maxExtent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:58'
}
PicStringPrim >> maxExtent: anObject [

	maxExtent := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicStringPrim >> position [

	^ position
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 15:08'
}
PicStringPrim >> position: anObject [

	position := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 16:26'
}
PicStringPrim >> rightEdges [

	^ rightEdges ifNil: [
		self calculateRightEdges.
		rightEdges]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringPrim >> startIndex [

	^ startIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringPrim >> startIndex: anObject [

	startIndex := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringPrim >> stopIndex [

	^ stopIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/20/2021 12:26'
}
PicStringPrim >> stopIndex: anObject [

	stopIndex := anObject.
]
