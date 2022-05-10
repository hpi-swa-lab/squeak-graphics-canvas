Class {
	#name : #PicShapePrim,
	#superclass : #PicGraphicsPrim,
	#instVars : [
		'bounds',
		'fillStyle',
		'borderStyle'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapePrim >> borderStyle [

	^ borderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapePrim >> borderStyle: anObject [

	borderStyle := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapePrim >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapePrim >> bounds: anObject [

	bounds := anObject.
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
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapePrim >> fillStyle [

	^ fillStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 9/27/2021 13:08'
}
PicShapePrim >> isTranslucent [

	^ fillStyle isTranslucent or: [borderStyle isTranslucent]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:08'
}
PicShapePrim >> isTransparent [

	^ fillStyle isTransparent and: [borderStyle isTransparent]
]
