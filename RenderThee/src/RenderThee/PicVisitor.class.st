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
	#category : #helpers,
	#'squeak_changestamp' : 'stlu 1/27/2022 11:26'
}
PicVisitor >> visitChildren: aGroupNode [

	| children |
	children := aGroupNode children ifNil: [^ self].
	1 to: children size do: [:childIndex |
		(children at: childIndex) acceptVisitor: self].
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 11:27'
}
PicVisitor >> visitClip: anObject [

	self visitChildren: anObject.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 11:26'
}
PicVisitor >> visitGroup: aGroupNode [

	self visitChildren: aGroupNode.
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
	#'squeak_changestamp' : 'stlu 1/27/2022 11:28'
}
PicVisitor >> visitMorph: anObject [

	self visitChildren: anObject.
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
	#'squeak_changestamp' : 'stlu 1/27/2022 11:27'
}
PicVisitor >> visitTransform: anObject [

	self visitChildren: anObject.
]
