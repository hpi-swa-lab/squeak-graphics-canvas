Class {
	#name : #RtOpaqueBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:09'
}
RtOpaqueBatch >> addInstance: a1 with: a2 with: a3 with: a4 [

	instanceData addFirst: a1 with: a2 with: a3 with: a4.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/22/2022 16:14'
}
RtOpaqueBatch >> getInstanceDataHandle [

	^ instanceData addressAt: 1
]
