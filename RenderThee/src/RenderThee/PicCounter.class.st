Class {
	#name : #PicCounter,
	#superclass : #PicVisitor,
	#instVars : [
		'counts'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #initialization,
	#timestamp : 'stlu 3/19/2021 20:28'
}
PicCounter >> initialize [

	super initialize.
	counts := Bag new
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitClip: anObject [

	super visitClip: anObject.
	counts add: #clip
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitGroup: aGroup [

	super visitGroup: aGroup.
	counts add: #group
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitImage: anObject [

	counts add: #image
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitLine: anObject [

	counts add: #line
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitOval: anObject [

	counts add: #oval
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitParagraph: anObject [

	counts add: #paragraph
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitPolygon: anObject [

	counts add: #polygon
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitRectangle: anObject [

	counts add: #rectangle
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitRoundedRectangle: anObject [

	counts add: #roundedRectangle
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitString: anObject [

	counts add: #string
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitTransform: anObject [

	super visitTransform: anObject.
	counts add: #transform
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitUnsupported: anObject [

	counts add: #unsupported
]
