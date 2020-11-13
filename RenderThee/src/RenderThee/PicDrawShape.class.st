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
	#timestamp : ''
}
PicDrawShape class >> bounds: aRectangle borderStyle: aBorderStyle [

	^ self
		bounds: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #'instance creation',
	#timestamp : ''
}
PicDrawShape class >> bounds: aRectangle fillStyle: aFillStyle [

	^ self
		bounds: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'instance creation',
	#timestamp : ''
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
	#timestamp : ''
}
PicDrawShape >> borderStyle [

	^ borderStyle
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawShape >> borderStyle: anObject [

	borderStyle := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawShape >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawShape >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawShape >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawShape >> fillStyle [

	^ fillStyle
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawShape >> fillStyle: anObject [

	fillStyle := anObject.
]
