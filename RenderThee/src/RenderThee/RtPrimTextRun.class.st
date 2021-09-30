Class {
	#name : #RtPrimTextRun,
	#superclass : #RtGPUPrimitive,
	#instVars : [
		'visibleLeft',
		'visibleRight',
		'transientDataF',
		'string',
		'startIndex',
		'stopIndex',
		'color',
		'font'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 9/28/2021 14:51'
}
RtPrimTextRun >> addToBatch: aBatch [

	| colorIndex storeFIndex storeIIndex glyphCache |
	colorIndex := aBatch renderer indexForColor: color.
	storeFIndex := aBatch transientStoreF addAllFrom: transientDataF.
	storeIIndex := aBatch transientStoreI
		add: clipRectIndex
		add: transformIndex
		add: colorIndex
		add: storeFIndex.
	
	glyphCache := aBatch glyphCacheForFont: font.
	0 to: stopIndex - startIndex do: [:charIndex |
		| rightEdge |
		(rightEdge := transientDataF at: charIndex + 5) > visibleLeft ifTrue: [
			| glyph |
			glyph := aBatch
				glyphForCharacter: (string at: startIndex + charIndex)
				inFont: font
				cache: glyphCache.
			aBatch
				addInstance: storeIIndex
				with: charIndex
				with: glyph second
				with: zIndex].
		rightEdge >= visibleRight ifTrue: [^ self]].
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:38'
}
RtPrimTextRun >> chooseGroup: groups [

	groups textBatch addPrimitive: self.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:13'
}
RtPrimTextRun >> string: aString start: start stop: stop font: aFont color: aColor left: left top: top [

	| length x |
	string := aString.
	startIndex := start.
	stopIndex := stop.
	font := aFont.
	color := aColor.
	
	length := stopIndex - startIndex + 1.
	(transientDataF := ExternalType float allocate: length + 4)
		at: 1 put: left asFloat;
		at: 2 put: top asFloat.
	
	x := 0.
	startIndex to: stopIndex do: [:charIndex |
		| char width |
		char := aString at: charIndex.
		width := font widthOf: char.
		x := x + width.
		transientDataF at: charIndex - startIndex + 5 put: x].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 17:02'
}
RtPrimTextRun >> transform: aTransform index: transformIdx clip: aRectangle index: clipRectIdx z: zIdx [

	| left |
	transformIndex := transformIdx.
	clipRectIndex := clipRectIdx.
	zIndex := zIdx.
	
	left := transientDataF at: 1.
	visibleLeft := aRectangle left - left.
	visibleRight := aRectangle right - left.
	
	^ true
]
