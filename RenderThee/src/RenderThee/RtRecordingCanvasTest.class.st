Class {
	#name : #RtRecordingCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvasTest >> canvasForm [

	^ canvas layer assuredForm
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvasTest >> createCanvas [

	^ RtRecordingCanvas extent: self canvasExtent
]
