Class {
	#name : #SLMessageMapping,
	#superclass : #Object,
	#instVars : [
		'targetSelector',
		'type'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 14:48'
}
SLMessageMapping >> targetSelector [

	^ targetSelector
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 14:48'
}
SLMessageMapping >> targetSelector: anObject [

	targetSelector := anObject
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 14:49'
}
SLMessageMapping >> type [

	^ type
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 14:49'
}
SLMessageMapping >> type: anObject [

	type := anObject
]
