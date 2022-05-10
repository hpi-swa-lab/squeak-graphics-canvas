"
I represent a single, atomic graphical operation.
"
Class {
	#name : #PicGraphicsPrim,
	#superclass : #PicNode,
	#instVars : [
		'primitives'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:11'
}
PicGraphicsPrim >> hasPrimitiveNode [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:00'
}
PicGraphicsPrim >> primitives [

	^ primitives
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:28'
}
PicGraphicsPrim >> primitives: anObject [

	^ primitives := anObject
]
