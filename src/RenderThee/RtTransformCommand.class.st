Class {
	#name : #RtTransformCommand,
	#superclass : #RtCanvasCommand,
	#instVars : [
		'matrix'
	],
	#category : #'RenderThee-CanvasCommands'
}

{ #category : #drawing }
RtTransformCommand >> drawOn: aCanvas [

	aCanvas concat: matrix
]

{ #category : #accessing }
RtTransformCommand >> matrix [
	^ matrix
]

{ #category : #accessing }
RtTransformCommand >> matrix: anObject [
	matrix := anObject
]
