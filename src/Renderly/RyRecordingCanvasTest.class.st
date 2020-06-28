Class {
	#name : #RyRecordingCanvasTest,
	#superclass : #RyCanvasTest,
	#category : 'Renderly-Tests'
}

{ #category : #accessing }
RyRecordingCanvasTest >> canvasForm [

	| fc |
	fc := FormCanvas extent: self canvasExtent.
	canvas layer drawOn: fc.
	^ fc form
]

{ #category : #initialization }
RyRecordingCanvasTest >> createCanvas [

	^ RecordingCanvas
		layer: (DrawLayer origin: 0@0)
		origin: 0@0
]
