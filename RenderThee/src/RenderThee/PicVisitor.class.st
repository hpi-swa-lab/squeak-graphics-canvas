Class {
	#name : #PicVisitor,
	#superclass : #Object,
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:14'
}
PicVisitor >> visit: anObject [

	anObject acceptVisitor: self
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:13'
}
PicVisitor >> visitClip: anObject [

	self visitGroup: anObject
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:12'
}
PicVisitor >> visitGroup: aGroup [

	aGroup children do: [:child |
		child acceptVisitor: self]
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitImage: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitLine: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitOval: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitParagraph: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitPolygon: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitRectangle: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitRoundedRectangle: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitString: anObject [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:13'
}
PicVisitor >> visitTransform: anObject [

	self visitGroup: anObject
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitUnsupported: anObject [

	
]
