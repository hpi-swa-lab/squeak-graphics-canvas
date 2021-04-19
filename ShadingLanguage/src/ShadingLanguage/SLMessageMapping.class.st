Class {
	#name : #SLMessageMapping,
	#superclass : #Object,
	#instVars : [
		'targetSelector',
		'type'
	],
	#category : #ShadingLanguage,
	#'squeak_changestamp' : ''
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMessageMapping >> generate: aMessageNode for: aGenerator [
	
	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'zagto 12/1/2020 14:48'
}
SLMessageMapping >> targetSelector [

	^ targetSelector
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMessageMapping >> targetSelector: anObject [

	targetSelector := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'zagto 12/1/2020 14:49'
}
SLMessageMapping >> type [

	^ type
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMessageMapping >> type: anObject [

	type := anObject.
]
