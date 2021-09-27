Class {
	#name : #PicCounter,
	#superclass : #PicVisitor,
	#instVars : [
		'counts'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:25'
}
PicCounter >> counts [

	^ counts valuesAndCounts
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:28'
}
PicCounter >> initialize [

	super initialize.
	counts := Bag new
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitClip: anObject [

	super visitClip: anObject.
	counts add: #clip
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitGroup: aGroup [

	super visitGroup: aGroup.
	counts add: #group
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitImage: anObject [

	counts add: #image
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitLine: anObject [

	counts add: #line
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:29'
}
PicCounter >> visitMorph: anObject [

	super visitMorph: anObject.
	counts add: #morph.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:28'
}
PicCounter >> visitOval: anObject [

	counts add: #oval
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitParagraph: anObject [

	counts add: #paragraph
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitPolygon: anObject [

	counts add: #polygon
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitRectangle: anObject [

	counts add: #rectangle
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitRoundedRectangle: anObject [

	counts add: #roundedRectangle
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitString: anObject [

	counts add: #string
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/19/2021 20:29'
}
PicCounter >> visitTransform: anObject [

	super visitTransform: anObject.
	counts add: #transform
]
