Class {
	#name : #RtTranslucentBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:10'
}
RtTranslucentBatch >> addInstance: a1 with: a2 with: a3 with: a4 [

	instanceData addLast: a1 with: a2 with: a3 with: a4.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:11'
}
RtTranslucentBatch >> getInstanceDataHandle [

	^ instanceData collector
]
