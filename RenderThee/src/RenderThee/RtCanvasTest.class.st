Class {
	#name : #RtCanvasTest,
	#superclass : #TestCase,
	#instVars : [
		'canvas',
		'colors'
	],
	#category : #'RenderThee-Tests'
}

{ #category : #testing }
RtCanvasTest class >> isAbstract [

	^ self name = #RtCanvasTest
]

{ #category : #accessing }
RtCanvasTest >> canvasExtent [

	^ 10@10
]

{ #category : #initialization }
RtCanvasTest >> createCanvas [

	self subclassResponsibility
]

{ #category : #running }
RtCanvasTest >> setUp [

	canvas := self createCanvas.
	
]

{ #category : #tests }
RtCanvasTest >> testClipBy [

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

{ #category : #tests }
RtCanvasTest >> testTransformBy [

	canvas
		transformBy: (Matrix2x3 withAngle: 180)
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: (c clipRect extent >= (8 @ 5)).
			c
				transformBy: (Matrix2x3 withAngle: 180)
				clippingTo: (4 @ 1 corner: 9 @ 9)
				during: [:c2 |
					self assert: (c2 clipRect extent >= (4 @ 5))]]
]

{ #category : #tests }
RtCanvasTest >> testTransformByPureTranslation [

	canvas
		transformBy: (Matrix2x3 withOffset: 2 @ 3)
		clippingTo: (1 @ 4 corner: 9 @ 9)
		during: [:c |
			self assert: 2 @ 3 equals: c origin.
			self assert: (c clipRect containsRect: (-1 @ 1 corner: 7 @ 6)).
			c
				transformBy: (Matrix2x3 withOffset: 4 @ 0)
				clippingTo: (2 @ -2 corner: 7 @ 6)
				during: [:c2 |
					self assert: 6 @ 3 equals: c2 origin.
					self assert: (c2 clipRect containsRect: (-2 @ 1 corner: 3 @ 6))]]
]

{ #category : #tests }
RtCanvasTest >> testTranslateBy [

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

{ #category : #tests }
RtCanvasTest >> testTranslateByClippingTo [

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

{ #category : #tests }
RtCanvasTest >> testTranslateToClippingTo [

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
