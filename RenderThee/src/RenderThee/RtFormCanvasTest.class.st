"
A test to assert behavior of the existing FormCanvas class.
"
Class {
	#name : #RtFormCanvasTest,
	#superclass : #RtCanvasTest,
	#category : #'RenderThee-Tests',
	#'squeak_changestamp' : 'stlu 8/21/2020 17:22'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormCanvasTest >> createCanvas [

	^ FormCanvas extent: self canvasExtent
]
