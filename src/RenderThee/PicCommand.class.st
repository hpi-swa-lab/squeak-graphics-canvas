Class {
	#name : #PicCommand,
	#superclass : #Object,
	#category : #'RenderThee-Pictures'
}

{ #category : #converting }
PicCommand >> asForm [

	| fc bounds |
	bounds := self estimatedBounds.
	fc := FormCanvas extent: bounds extent.
	fc translateBy: bounds topLeft negated during: [:c | self drawOn: c].
	^ fc form
]

{ #category : #drawing }
PicCommand >> drawOn: aCanvas [

	self subclassResponsibility
]

{ #category : #accessing }
PicCommand >> estimatedBounds [

	self subclassResponsibility
]

{ #category : #testing }
PicCommand >> isDrawing [

	^ false
]

{ #category : #debugging }
PicCommand >> open [

	 ^ self asForm asMorph openInHand
]
