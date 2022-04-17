Class {
	#name : #RtImageBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/4/2022 14:37'
}
RtImageBatch >> program [

	^ renderer imageProgram
]
