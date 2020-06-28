Class {
	#name : #RtDrawOval,
	#superclass : #RtDrawShape,
	#category : 'RenderThee-Drawing'
}

{ #category : #drawing }
RtDrawOval >> drawOn: aCanvas [

	self flag: #todo.
	aCanvas
		fillOval: self bounds
		fillStyle: self fillStyle
		borderWidth: self borderStyle width
		borderColor: self borderStyle color
]

{ #category : #visiting }
RtDrawOval >> visit: aVisitor [

	^ aVisitor visitDrawOval: self
]
