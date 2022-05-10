Class {
	#name : #RtBatch,
	#superclass : #Object,
	#instVars : [
		'type',
		'instanceData',
		'instanceDataHandle',
		'instanceVBO',
		'instanceVBOOffset'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 4/21/2022 17:19'
}
RtBatch class >> type: aBatchType [

	^ self new type: aBatchType
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:10'
}
RtBatch >> addInstance: a1 with: a2 with: a3 with: a4 [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 12:26'
}
RtBatch >> byteSize [

	^ instanceData size * 4
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:10'
}
RtBatch >> getInstanceDataHandle [

	self subclassResponsibility.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:12'
}
RtBatch >> initialize [

	instanceData := UInt32Collection new.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 10:49'
}
RtBatch >> instanceData [

	^ instanceData
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:09'
}
RtBatch >> instanceVBO [

	^ instanceVBO
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:09'
}
RtBatch >> instanceVBO: anObject [

	instanceVBO := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:09'
}
RtBatch >> instanceVBOOffset [

	^ instanceVBOOffset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:09'
}
RtBatch >> instanceVBOOffset: anObject [

	instanceVBOOffset := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:35'
}
RtBatch >> program [

	^ type program
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/18/2022 15:57'
}
RtBatch >> reset [

	instanceData reset.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 12:26'
}
RtBatch >> size [

	^ instanceData size // 4
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:59'
}
RtBatch >> type [

	^ type
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:59'
}
RtBatch >> type: anObject [

	type := anObject.
]
