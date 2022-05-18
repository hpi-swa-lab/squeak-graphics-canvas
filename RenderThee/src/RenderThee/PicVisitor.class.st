Class {
	#name : #PicVisitor,
	#superclass : #Object,
	#instVars : [
		'currentNode'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/17/2022 11:07'
}
PicVisitor class >> on: aCanvas [

	^ self new
		canvas: aCanvas;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:13'
}
PicVisitor >> visit: aNode [

	^ aNode acceptVisitor: self
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:17'
}
PicVisitor >> visitAll: beginNode [

	self visitAll: beginNode until: nil.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/17/2022 13:14'
}
PicVisitor >> visitAll: beginNode until: endNode [
	"begin inclusive, end exclusive"
	currentNode := beginNode.
	currentNode acceptVisitor: self.
	[endNode ~~ (currentNode := currentNode next)] whileTrue: [
		currentNode acceptVisitor: self].
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:21'
}
PicVisitor >> visitClipBegin: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitClipEnd: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitImage: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitLine: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitOval: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitParagraph: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitPictureBegin: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitPictureEnd: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitPolygon: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitRectangle: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:24'
}
PicVisitor >> visitRoundedRectangle: aNode [

	
]

{
	#category : #'visiting prims',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:25'
}
PicVisitor >> visitTextRun: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitTransformBegin: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitTransformEnd: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitTranslationBegin: aNode [

	
]

{
	#category : #'visiting groups',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:22'
}
PicVisitor >> visitTranslationEnd: aNode [

	
]
