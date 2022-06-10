Class {
	#name : #RtPluggableMorph,
	#superclass : #Morph,
	#instVars : [
		'drawBlock'
	],
	#category : #'RenderThee-Examples-Reference'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/16/2021 15:06'
}
RtPluggableMorph >> drawBlock [

	^ drawBlock ifNil: [
		drawBlock := [:canvas :bounds |
			canvas
				frameAndFillRectangle: bounds
				fillStyle: self fillStyle
				borderStyle: self borderStyle]]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/16/2021 13:01'
}
RtPluggableMorph >> drawBlock: anObject [

	drawBlock := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/16/2021 15:06'
}
RtPluggableMorph >> drawOn: aCanvas [

	self drawBlock value: aCanvas value: self bounds.
]
