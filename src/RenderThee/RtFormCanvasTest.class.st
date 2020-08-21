Class {
	#name : #RtFormCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests'
}

{ #category : #initialization }
RtFormCanvasTest >> createCanvas [

	^ FormCanvas extent: self canvasExtent
]
