Class {
	#name : #RtTextBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 13:25'
}
RtTextBatch >> program [

	^ renderer textProgram
]

{
	#category : #instances,
	#'squeak_changestamp' : 'stlu 8/26/2021 16:58'
}
RtTextBatch >> textRun: aPicString [

	| glyphCache bounds visibleLeft visibleRight left rightEdges leftEdge textRunBoundsIndex textRunIndex textColorIndex |
	bounds := aPicString bounds.
	visibleLeft := renderer clipRect left max: bounds left.
	visibleRight := renderer clipRect right min: bounds right.
	left := bounds left.
	rightEdges := aPicString rightEdges.
	leftEdge := left.
	glyphCache := renderer fontCache at: aPicString font ifAbsentPut: [Dictionary new].
	
	textRunBoundsIndex := renderer transientStoreF
		add: bounds left asFloat
		add: bounds top asFloat
		add: bounds right asFloat
		add: bounds bottom asFloat.
	textColorIndex := renderer indexForColor: aPicString color.
	textRunIndex := renderer transientStoreI
		add: renderer clipRectIndex
		add: renderer transformIndex
		add: textColorIndex
		add: textRunBoundsIndex.
	renderer transientStoreF
		addFrom: rightEdges
		startingAt: 1
		count: rightEdges size.
	1 to: aPicString length do: [:charIndex |
		| rightEdge |
		(rightEdge := (rightEdges at: charIndex) + left) > visibleLeft ifTrue: [
			| char offset glyph |
			char := aPicString contents at: aPicString startIndex + charIndex - 1.
			glyph := glyphCache at: char ifAbsentPut: [
				| form allocation glyphBounds glyphIndex |
				form := aPicString font characterFormAt: char.
				allocation := renderer glyphStore uploadForm: form.
				glyphBounds := allocation rectangle origin extent: form extent.
				glyphIndex := renderer persistentStoreF
					add: glyphBounds left asFloat
					add: glyphBounds top asFloat
					add: glyphBounds right asFloat
					add: glyphBounds bottom asFloat.
				{ allocation . glyphIndex }].
			offset := instanceIndex * 4.
			instanceData
				at: offset + 1 put: textRunIndex;
				at: offset + 2 put: charIndex - 1;
				at: offset + 3 put: glyph second;
				at: offset + 4 put: renderer zIndex.
			instanceIndex := instanceIndex + 1].
		(leftEdge := rightEdge) > visibleRight ifTrue: [^ self]].
]
