"
I represent a single, atomic graphical operation.
"
Class {
	#name : #PicGraphicsPrim,
	#superclass : #PicNode,
	#instVars : [
		'bounds'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 12:35'
}
PicGraphicsPrim >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 12:35'
}
PicGraphicsPrim >> bounds: aRectangle [

	bounds := aRectangle.
]

{
	#category : #reclaiming,
	#'squeak_changestamp' : 'stlu 5/19/2022 15:13'
}
PicGraphicsPrim >> reclaim [

	self unlink.
	self pool return: self.
]
