"
A test to assert behavior of the existing FormCanvas class.
"
Class {
	#name : #RtFormCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests'
}

{ #category : #initialization }
RtFormCanvasTest >> createCanvas [

	^ FormCanvas extent: self canvasExtent
]
