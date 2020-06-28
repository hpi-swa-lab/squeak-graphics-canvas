Class {
	#name : #RtDrawRectangle,
	#superclass : #RtDrawShape,
	#category : 'RenderThee-Drawing'
}

{ #category : #drawing }
RtDrawRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: self bounds
		fillStyle: self fillStyle
		borderStyle: self borderStyle
]

{ #category : #visiting }
RtDrawRectangle >> visit: aVisitor [

	^ aVisitor visitDrawRectangle: self
]
