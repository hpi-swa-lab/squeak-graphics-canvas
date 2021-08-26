Class {
	#name : #PicShape,
	#superclass : #PicDrawing,
	#instVars : [
		'bounds',
		'fillStyle',
		'borderStyle'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape class >> bounds: aRectangle borderStyle: aBorderStyle [

	^ self
		bounds: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape class >> bounds: aRectangle fillStyle: aFillStyle [

	^ self
		bounds: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape class >> bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> borderStyle [

	^ borderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> borderStyle: anObject [

	borderStyle := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> fillStyle [

	^ fillStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicShape >> fillStyle: anObject [

	fillStyle := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:14'
}
PicShape >> isTranslucent [

	^ fillStyle isTranslucent
]
