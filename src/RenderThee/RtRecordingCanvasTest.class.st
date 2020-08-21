Class {
	#name : #RtRecordingCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests'
}

{ #category : #initialization }
RtRecordingCanvasTest >> createCanvas [

	^ RtRecordingCanvas extent: self canvasExtent
]
