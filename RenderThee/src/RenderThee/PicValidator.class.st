Class {
	#name : #PicValidator,
	#superclass : #PicVisitor,
	#instVars : [
		'groupStack'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:58'
}
PicValidator >> initialize [

	groupStack := OrderedCollection new.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/17/2022 13:44'
}
PicValidator >> visitAll: beginNode until: endNode [

	super visitAll: beginNode until: endNode.
	self assert: groupStack isEmpty.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:59'
}
PicValidator >> visitClipBegin: aNode [

	groupStack addLast: #clip.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 12:00'
}
PicValidator >> visitClipEnd: aNode [

	self assert: groupStack removeLast = #clip.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:59'
}
PicValidator >> visitPictureBegin: aNode [

	groupStack addLast: #picture.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 12:00'
}
PicValidator >> visitPictureEnd: aNode [

	self assert: groupStack removeLast = #picture.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:59'
}
PicValidator >> visitTransformBegin: aNode [

	groupStack addLast: #transform.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 12:00'
}
PicValidator >> visitTransformEnd: aNode [

	self assert: groupStack removeLast = #transform.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:59'
}
PicValidator >> visitTranslationBegin: aNode [

	groupStack addLast: #translation.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 12:00'
}
PicValidator >> visitTranslationEnd: aNode [

	self assert: groupStack removeLast = #translation.
]
