Class {
	#name : #RtTextBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #glyphs,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:15'
}
RtTextBatch >> glyphCacheForFont: font [

	^ renderer fontCache
		at: font
		ifAbsentPut: [Dictionary new]
]

{
	#category : #glyphs,
	#'squeak_changestamp' : 'stlu 11/17/2021 14:53'
}
RtTextBatch >> glyphForCharacter: aCharacter inFont: aFont cache: glyphCache [

	^ glyphCache at: aCharacter ifAbsentPut: [
		| form width allocation glyphBounds glyphIndex canvas |
		width := aFont widthOf: aCharacter.
		canvas := FormCanvas extent: width @ aFont height depth: aFont depth.
		canvas fillColor: Color transparent.
		canvas
			drawString: aCharacter asString
			in: (0@0 extent: canvas extent)
			font: aFont
			color: Color black.
		form := canvas form.
		allocation := renderer glyphStore uploadForm: form.
		glyphBounds := allocation rectangle origin extent: form extent.
		glyphIndex := renderer persistentStoreF
			add: glyphBounds left asFloat
			add: glyphBounds top asFloat
			add: glyphBounds right asFloat
			add: glyphBounds bottom asFloat.
		{ allocation . glyphIndex }].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 13:25'
}
RtTextBatch >> program [

	^ renderer textProgram
]

{
	#category : #instances,
	#'squeak_changestamp' : 'stlu 9/27/2021 17:38'
}
RtTextBatch >> textRun: aPicString in: clipRect [

	| glyphCache position visibleLeft visibleRight left rightEdges textRunBoundsIndex textRunIndex textColorIndex |
	position := aPicString position.
	left := position x.
	visibleLeft := clipRect left - left.
	visibleRight := clipRect right - left.
	rightEdges := aPicString rightEdges.
	
	textRunBoundsIndex := renderer transientStoreF
		add: left asFloat
		add: position y asFloat.
	renderer transientStoreF
		addFrom: rightEdges
		startingAt: 1
		count: rightEdges size.
	textColorIndex := renderer indexForColor: aPicString color.
	textRunIndex := renderer transientStoreI
		add: (renderer allocateClipRect: clipRect)
		add: aPicString parent effectiveTransform
		add: textColorIndex
		add: textRunBoundsIndex.
	
	glyphCache := renderer fontCache at: aPicString font ifAbsentPut: [Dictionary new].
	1 to: aPicString length do: [:charIndex |
		| rightEdge |
		(rightEdge := rightEdges at: charIndex) > visibleLeft ifTrue: [
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
		rightEdge >= visibleRight ifTrue: [^ self]].
]
