Class {
	#name : #RtRecordingCanvasTest,
	#superclass : #RyCanvasTest,
	#category : 'Renderly-Tests'
}

{ #category : #accessing }
RtRecordingCanvasTest >> canvasForm [

	^ canvas layer assuredForm
]

{ #category : #initialization }
RtRecordingCanvasTest >> createCanvas [

	^ RtRecordingCanvas extent: self canvasExtent
]
