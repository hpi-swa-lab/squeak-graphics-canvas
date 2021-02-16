"
A GLBitmapFont caches a GLTexture containing prerendered glyphs for all printable ascii characters as well as their advance width.
"
Class {
	#name : #GLBitmapFont,
	#superclass : #Object,
	#instVars : [
		'offsets',
		'texture',
		'font'
	],
	#category : #'OpenGLCanvas-Fonts'
}

{ #category : #constants }
GLBitmapFont class >> characterDistance [
	
	^ 2
]

{ #category : #accessing }
GLBitmapFont >> advanceFor: aCharacter [

	^ font advanceOf: aCharacter
]

{ #category : #accessing }
GLBitmapFont >> extentFor: aCharacter [

	| index |
	
	index := self indexForCharacter: aCharacter.
	^ (offsets at: index + 1) - (offsets at: index ifAbsent: [0]) - self class characterDistance @ (font characterFormAt: aCharacter) height
]

{ #category : #accessing }
GLBitmapFont >> font: aFont [

	| x colorCollectBlock |
	font := aFont.
	
	offsets := Array new: self printableCharacters size.
	
	texture := GL2DTexture create extent: (self printableCharacters collect: [:char | (aFont characterFormAt: char asCharacter) width + self class characterDistance]) sum @ aFont height.
	
	colorCollectBlock := aFont isTTCFont
		ifTrue: [[:c | Color white alpha: c alpha]]
		ifFalse: [[:c | Color white alpha: 1 - c red]].
		
	x := 0.	
	self printableCharacters withIndexDo: [:character :index | | form | 
		form := aFont characterFormAt: character asCharacter.
		texture subImage: (form collectColors: colorCollectBlock) at: x @ 0.
		x := x + form width + self class characterDistance.
		offsets at: index put: x]
]

{ #category : #accessing }
GLBitmapFont >> hasGlyphOf: aCharacter [

	^ self printableCharacters includes: aCharacter asInteger
]

{ #category : #accessing }
GLBitmapFont >> indexForCharacter: aCharacter [

	^ aCharacter asInteger - self printableCharacters start
]

{ #category : #accessing }
GLBitmapFont >> offsetFor: aCharacter [

	^ ((offsets at: (self indexForCharacter: aCharacter) ifAbsent: [0]) @ font ascent)
		 - (font characterFormAt: aCharacter) offset
]

{ #category : #accessing }
GLBitmapFont >> printableCharacters [

	^ 33 to: 255.
]

{ #category : #accessing }
GLBitmapFont >> texture [

	^ texture
]
