"
I represent a single, atomic graphical operation.
"
Class {
	#name : #PicPrimitiveNode,
	#superclass : #PicPictureNode,
	#instVars : [
		'primitives'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:11'
}
PicPrimitiveNode >> hasPrimitiveNode [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:00'
}
PicPrimitiveNode >> primitives [

	^ primitives
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:28'
}
PicPrimitiveNode >> primitives: anObject [

	^ primitives := anObject
]
