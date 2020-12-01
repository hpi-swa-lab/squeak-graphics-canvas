Class {
	#name : #RtRecordingCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
RtRecordingCanvasTest >> canvasForm [

	^ canvas layer assuredForm
]

{
	#category : #initialization,
	#timestamp : ''
}
RtRecordingCanvasTest >> createCanvas [

	^ RtRecordingCanvas extent: self canvasExtent
]
