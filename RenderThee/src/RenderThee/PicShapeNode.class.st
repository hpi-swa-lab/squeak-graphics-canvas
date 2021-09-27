Class {
	#name : #PicShapeNode,
	#superclass : #PicPrimitiveNode,
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
PicShapeNode >> borderStyle [

	^ borderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapeNode >> borderStyle: anObject [

	borderStyle := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapeNode >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapeNode >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapeNode >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapeNode >> fillStyle [

	^ fillStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShapeNode >> fillStyle: anObject [

	fillStyle := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:00'
}
PicShapeNode >> isShapeNode [

	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:08'
}
PicShapeNode >> isTranslucent [

	^ fillStyle isTranslucent or: [borderStyle isTranslucent]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:08'
}
PicShapeNode >> isTransparent [

	^ fillStyle isTransparent and: [borderStyle isTransparent]
]
