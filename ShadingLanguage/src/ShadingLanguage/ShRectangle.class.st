Class {
	#name : #ShRectangle,
	#superclass : #Object,
	#instVars : [
		'origin',
		'corner'
	],
	#category : #'ShadingLanguage-Mockup'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 8/9/2021 15:14'
}
ShRectangle class >> origin: origin corner: corner [

	^ self new
		origin: origin;
		corner: corner;
		yourself
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 8/9/2021 15:43'
}
ShRectangle class >> origin: origin extent: extent [

	^ self
		origin: origin
		corner: (origin + extent)
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:08'
}
ShRectangle >> corner [

	^ corner
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:08'
}
ShRectangle >> corner: anObject [

	corner := anObject.
]

{
	#category : #declaration,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:22'
}
ShRectangle >> declareMembers [

	origin vec2.
	corner vec2.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:44'
}
ShRectangle >> extent [

	^ corner - origin
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 8/9/2021 15:15'
}
ShRectangle >> intersect: aRectangle [

	^ ShRectangle 
		origin: (origin max: aRectangle origin)
		corner: (corner min: aRectangle corner)
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/6/2021 10:34'
}
ShRectangle >> origin [

	^ origin
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/6/2021 10:34'
}
ShRectangle >> origin: anObject [

	origin := anObject.
]
