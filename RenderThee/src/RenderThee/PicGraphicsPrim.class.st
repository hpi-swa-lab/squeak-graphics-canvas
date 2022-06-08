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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/8/2022 12:23'
}
PicGraphicsPrim >> extent [

	^ bounds extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 15:19'
}
PicGraphicsPrim >> height [

	^ bounds height
]

{
	#category : #reclaiming,
	#'squeak_changestamp' : 'stlu 6/2/2022 12:53'
}
PicGraphicsPrim >> reclaim [

	super reclaim.
	self pool return: self.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 15:18'
}
PicGraphicsPrim >> width [

	^ bounds width
]
