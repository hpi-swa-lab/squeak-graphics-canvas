Class {
	#name : #PicTransformBegin,
	#superclass : #PicGroupBegin,
	#instVars : [
		'matrix'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/12/2022 12:30'
}
PicTransformBegin class >> transform: aTransform [

	^ self new transform: aTransform
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:04'
}
PicTransformBegin >> acceptVisitor: aVisitor [

	^ aVisitor visitTransformBegin: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:41'
}
PicTransformBegin >> endClass [

	^ PicTransformEnd
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2022 15:26'
}
PicTransformBegin >> initialize [

	super initialize.
	matrix := PicMatrix2x3 identity.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2022 15:25'
}
PicTransformBegin >> matrix [

	^ matrix
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2022 15:25'
}
PicTransformBegin >> matrix: aMatrix2x3 [

	matrix := aMatrix2x3.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:52'
}
PicTransformBegin >> pool [

	^ TransformBeginPool
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2022 15:25'
}
PicTransformBegin >> transform [

	^ matrix
]
