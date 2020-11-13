Class {
	#name : #RtRecordingCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvasTest >> canvasForm [

	^ canvas layer assuredForm
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvasTest >> createCanvas [

	^ RtRecordingCanvas extent: self canvasExtent
]
