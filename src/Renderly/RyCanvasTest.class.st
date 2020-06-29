Class {
	#name : #RyCanvasTest,
	#superclass : #TestCase,
	#instVars : [
		'canvas',
		'colors'
	],
	#category : 'Renderly-Tests'
}

{ #category : #testing }
RyCanvasTest class >> isAbstract [

	^ self name = #RyCanvasTest
]

{ #category : #accessing }
RyCanvasTest >> assertForm: formDescription [

	| expected actual |
	actual := self canvasForm.
	expected := self formDescriptionToForm: formDescription.
	self assert: expected depth equals: actual depth.
	self assert: expected extent equals: actual extent.
	self assert: expected bits equals: actual bits
]

{ #category : #accessing }
RyCanvasTest >> canvasExtent [

	^ 10@10
]

{ #category : #accessing }
RyCanvasTest >> canvasForm [

	self subclassResponsibility
]

{ #category : #helpers }
RyCanvasTest >> colorNamed: aSymbol [

	^ colors at: aSymbol
]

{ #category : #initialization }
RyCanvasTest >> createCanvas [

	self subclassResponsibility
]

{ #category : #helpers }
RyCanvasTest >> formDescriptionToForm: aString [

	| lines colors |
	lines := aString lines.
	colors := lines gather: [:line |
				line
					collect: [:char | (self colorNamed: char) pixelValue32]
					as: OrderedCollection].
	^ Form
		extent: lines first size @ lines size
		depth: 32
		fromArray: colors offset: 0@0
]

{ #category : #initialization }
RyCanvasTest >> initialize [

	super initialize.
	colors := {
		$R -> Color red .
		$G -> Color green .
		$B -> Color blue .
		$O -> Color black .
		$W -> Color white .
		$T -> Color transparent } as: Dictionary.
]

{ #category : #running }
RyCanvasTest >> setUp [

	canvas := self createCanvas.
	
]

{ #category : #'tests - drawing - support' }
RyCanvasTest >> testClipBy [

	canvas
		clipBy: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 0 @ 0 equals: c origin.
			self assert: (c clipRect containsRect: (1 @ 4 corner: 9 @ 9)).
			c
				clipBy: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 0 @ 0 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (4 @ 4 corner: 9 @ 9))]]
]

{ #category : #'tests - drawing - rectangles' }
RyCanvasTest >> testFillRectangle [

	canvas fillRectangle: (0@0 corner: 10@10) color: Color red.
	canvas fillRectangle: (1@1 corner: 6@6) color: Color green.
	canvas fillRectangle: (4@4 corner: 9@7) color: Color blue.
	self assertForm:
'RRRRRRRRRR
RGGGGGRRRR
RGGGGGRRRR
RGGGGGRRRR
RGGGBBBBBR
RGGGBBBBBR
RRRRBBBBBR
RRRRRRRRRR
RRRRRRRRRR
RRRRRRRRRR'
]

{ #category : #'tests - drawing - support' }
RyCanvasTest >> testTransformBy [

	canvas
		transformBy: (MatrixTransform2x3 withAngle: 180)
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 8 @ 8 equals: c origin.
			self assert: (c clipRect containsRect: (-8 @ -8 corner: 0 @ -3)).
			c
				transformBy: (MatrixTransform2x3 withAngle: 180)
				clippingTo: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 8 @ 8 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-8 @ -8 corner: -3 @ 0))]]
]

{ #category : #'tests - drawing - support' }
RyCanvasTest >> testTransformByPureTranslation [

	canvas
		transformBy: (MatrixTransform2x3 withOffset: -2 @ -3)
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-1 @ 1 corner: 7 @ 6)).
			c
				transformBy: (MatrixTransform2x3 withOffset: -4 @ 0)
				clippingTo: (2 @ -2 corner: 7 @ 6)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-2 @ 1 corner: 3 @ 6))]]
]

{ #category : #'tests - drawing - support' }
RyCanvasTest >> testTranslateBy [

	canvas
		translateBy: 2 @ 3
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-2 @ -3 corner: 8 @ 7)).
			c
				translateBy: 4 @ 0
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-6 @ -3 corner: 4 @ 7))]]
]

{ #category : #'tests - drawing - support' }
RyCanvasTest >> testTranslateByClippingTo [

	canvas
		translateBy: 2 @ 3
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-1 @ 1 corner: 7 @ 6)).
			c
				translateBy: 4 @ 0
				clippingTo: (2 @ -2 corner: 7 @ 6)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect:  (-2 @ 1 corner: 3 @ 6))]]
]

{ #category : #'tests - drawing - support' }
RyCanvasTest >> testTranslateToClippingTo [

	canvas
		translateTo: 2 @ 3
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-1 @ 1 corner: 7 @ 6)).
			c
				translateTo: 6 @ 3
				clippingTo: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-2 @ 1 corner: 3 @ 6))]]
]
