Class {
	#name : #RtClipCommand,
	#superclass : #RtCanvasCommand,
	#instVars : [
		'clipRect'
	],
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #'instance creation' }
RtClipCommand class >> clipRect: aRectangle [

	^ self new
		clipRect: aRectangle;
		yourself
]

{ #category : #accessing }
RtClipCommand >> clipRect [

	^ clipRect
]

{ #category : #accessing }
RtClipCommand >> clipRect: anObject [

	clipRect := anObject
]

{ #category : #drawing }
RtClipCommand >> drawOn: aCanvas [

	aCanvas clipRect: clipRect
]
