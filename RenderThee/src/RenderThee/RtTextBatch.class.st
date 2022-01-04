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
