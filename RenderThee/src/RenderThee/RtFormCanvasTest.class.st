"
A test to assert behavior of the existing FormCanvas class.
"
Class {
	#name : #RtFormCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests',
	#commentStamp : ''
}

{
	#category : #initialization,
	#timestamp : ''
}
RtFormCanvasTest >> createCanvas [

	^ FormCanvas extent: self canvasExtent
]
