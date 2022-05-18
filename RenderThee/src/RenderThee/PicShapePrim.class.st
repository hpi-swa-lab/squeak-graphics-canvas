Class {
	#name : #PicShapePrim,
	#superclass : #PicGraphicsPrim,
	#instVars : [
		'fillStyle',
		'borderStyle'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicShapePrim >> borderStyle [

	^ borderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicShapePrim >> borderStyle: anObject [

	borderStyle := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapePrim >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicShapePrim >> fillStyle [

	^ fillStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicShapePrim >> fillStyle: anObject [

	fillStyle := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:00'
}
PicShapePrim >> isShapeNode [

	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicShapePrim >> isTranslucent [

	^ fillStyle isTranslucent or: [borderStyle isTranslucent]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicShapePrim >> isTransparent [

	^ fillStyle isTransparent and: [borderStyle isTransparent]
]
