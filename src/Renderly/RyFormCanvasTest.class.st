Class {
	#name : #RyFormCanvasTest,
	#superclass : #RyCanvasTest,
	#category : 'Renderly-Tests'
}

{ #category : #accessing }
RyFormCanvasTest >> canvasForm [

	^ canvas form
]

{ #category : #initialization }
RyFormCanvasTest >> createCanvas [

	^ FormCanvas extent: self canvasExtent
]
