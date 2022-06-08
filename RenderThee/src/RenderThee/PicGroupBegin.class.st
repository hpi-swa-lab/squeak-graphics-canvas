Class {
	#name : #PicGroupBegin,
	#superclass : #PicNode,
	#instVars : [
		'end'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:42'
}
PicGroupBegin >> end [

	^ end
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:42'
}
PicGroupBegin >> end: anObject [

	end := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:41'
}
PicGroupBegin >> endClass [

	self subclassResponsibility.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:46'
}
PicGroupBegin >> initialize [

	super initialize.
	end := self endClass new.
	end begin: self.
]

{
	#category : #reclaiming,
	#'squeak_changestamp' : 'stlu 6/2/2022 12:53'
}
PicGroupBegin >> reclaim [

	super reclaim.
	self pool return: self.
]
