Class {
	#name : #PicPicture,
	#superclass : #Object,
	#instVars : [
		'needsUpdating',
		'beginNode',
		'endNode',
		'captureBounds',
		'captureClipRect',
		'lastUpdateTime',
		'lastUpdateFrame'
	],
	#pools : [
		'PicConstants'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:16'
}
PicPicture >> asForm [

	| canvas |
	canvas := FormCanvas extent: (captureBounds intersect: captureClipRect) extent.
	canvas translateBy: captureBounds origin negated during: [:c |
		self replayOn: c].
	^ canvas form
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> beginNode [

	^ beginNode
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> beginNode: anObject [

	beginNode := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> captureBounds [

	^ captureBounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> captureBounds: anObject [

	captureBounds := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> captureClipRect [

	^ captureClipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> captureClipRect: anObject [

	captureClipRect := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> endNode [

	^ endNode
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> endNode: anObject [

	endNode := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:49'
}
PicPicture >> initialize [

	super initialize.
	beginNode := PicPictureBegin new.
	endNode := PicPictureEnd new.
	beginNode end: endNode.
	endNode begin: beginNode.
	needsUpdating := true.
	lastUpdateTime := 0.
	lastUpdateFrame := 0.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/17/2022 14:07'
}
PicPicture >> isEmpty [

	^ beginNode next == endNode
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> lastUpdateFrame [

	^ lastUpdateFrame
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> lastUpdateFrame: anObject [

	lastUpdateFrame := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> lastUpdateTime [

	^ lastUpdateTime
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> lastUpdateTime: anObject [

	lastUpdateTime := anObject.
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 5/17/2022 10:51'
}
PicPicture >> markInvalid [

	needsUpdating := true.
]

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 5/17/2022 10:51'
}
PicPicture >> markValid [

	needsUpdating := false.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> needsUpdating [

	^ needsUpdating
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 14:06'
}
PicPicture >> needsUpdating: anObject [

	needsUpdating := anObject.
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:18'
}
PicPicture >> open [

	self asForm asMorph openInHand.
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:16'
}
PicPicture >> replayOn: aCanvas [

	^ (PicCanvasReplay on: aCanvas)
		visitAll: beginNode until: endNode next
]
