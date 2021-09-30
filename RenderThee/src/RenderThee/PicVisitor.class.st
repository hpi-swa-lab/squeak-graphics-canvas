Class {
	#name : #PicVisitor,
	#superclass : #Object,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:14'
}
PicVisitor >> visit: anObject [

	anObject acceptVisitor: self
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:13'
}
PicVisitor >> visitClip: anObject [

	self visitGroup: anObject
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 9/29/2021 15:49'
}
PicVisitor >> visitGroup: aGroupNode [

	| children |
	children := aGroupNode children ifNil: [^ self].
	1 to: children size do: [:childIndex |
		(children at: childIndex) acceptVisitor: self].
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitImage: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitLine: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:29'
}
PicVisitor >> visitMorph: anObject [

	self visitGroup: anObject.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitOval: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitParagraph: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitPolygon: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitRectangle: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitRoundedRectangle: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:11'
}
PicVisitor >> visitString: anObject [

	
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:13'
}
PicVisitor >> visitTransform: anObject [

	self visitGroup: anObject
]
