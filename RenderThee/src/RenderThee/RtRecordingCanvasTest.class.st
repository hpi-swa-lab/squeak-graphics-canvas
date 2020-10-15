Class {
	#name : #RtRecordingCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests'
}

{ #category : #accessing }
RtRecordingCanvasTest >> canvasForm [

	^ canvas layer assuredForm
]

{ #category : #initialization }
RtRecordingCanvasTest >> createCanvas [

	^ RtRecordingCanvas extent: self canvasExtent
]
