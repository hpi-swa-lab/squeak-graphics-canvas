Class {
	#name : #PicDrawShape,
	#superclass : #PicDraw,
	#instVars : [
		'bounds',
		'fillStyle',
		'borderStyle'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape class >> bounds: aRectangle borderStyle: aBorderStyle [

	^ self
		bounds: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape class >> bounds: aRectangle fillStyle: aFillStyle [

	^ self
		bounds: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape class >> bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> borderStyle [

	^ borderStyle
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> borderStyle: anObject [

	borderStyle := anObject.
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> fillStyle [

	^ fillStyle
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawShape >> fillStyle: anObject [

	fillStyle := anObject.
]
