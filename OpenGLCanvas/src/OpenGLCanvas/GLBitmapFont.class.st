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

{ #category : #'as yet unclassified' }
GLBitmapFont >> advanceFor: aCharacter [

	^ font advanceOf: aCharacter
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> extentFor: aCharacter [

	| index |
	
	index := self indexForCharacter: aCharacter.
	^ (offsets at: index + 1) - (offsets at: index ifAbsent: [0]) @ (font characterFormAt: aCharacter) height
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> font: aFont [

	| x |
	font := aFont.
	
	offsets := Array new: self printableCharacters size.
	
	texture := GL2DTexture create extent: (self printableCharacters collect: [:char | (aFont characterFormAt: char asCharacter) width]) sum @ aFont height.
	
	x := 0.
	self printableCharacters withIndexDo: [:character :index | | form | 
		form := aFont characterFormAt: character asCharacter.
		texture subImage: (form collectColors: [:c | Color white alpha: 1 - c red]) at: x @ 0.
		x := x + form width.
		offsets at: index put: x]
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> hasGlyphOf: aCharacter [

	^ self printableCharacters includes: aCharacter asInteger
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> indexForCharacter: aCharacter [

	^ aCharacter asInteger - self printableCharacters start
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> offsetFor: aCharacter [

	^ ((offsets at: (self indexForCharacter: aCharacter) ifAbsent: [0]) @ font ascent)
		 - (font characterFormAt: aCharacter) offset
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> printableCharacters [

	^ 33 to: 126.
]

{ #category : #'as yet unclassified' }
GLBitmapFont >> texture [

	^ texture
]
