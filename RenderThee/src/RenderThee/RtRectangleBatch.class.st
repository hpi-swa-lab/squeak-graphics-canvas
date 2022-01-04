Class {
	#name : #RtRectangleBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:06'
}
RtRectangleBatch >> program [

	^ renderer rectangleProgram
]
