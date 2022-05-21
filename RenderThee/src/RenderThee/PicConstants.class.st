Class {
	#name : #PicConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ClipBeginPool',
		'ImagePrimPool',
		'InfiniteRectangle',
		'LinePrimPool',
		'OvalPrimPool',
		'ParagraphPrimPool',
		'PictureBeginPool',
		'PointPool',
		'PolygonPrimPool',
		'RectanglePool',
		'RectanglePrimPool',
		'RoundedRectanglePrimPool',
		'TextRunPrimPool',
		'TransformBeginPool',
		'TransformPool',
		'TranslationBeginPool',
		'TransparentBorderStyle',
		'TransparentFillStyle',
		'ZeroPointFloat',
		'ZeroPointInt'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:23'
}
PicConstants class >> initialize [
"
self initialize.
"
	self initializeConstants.
	self initializeObjectPools.
	self initializePictureProperty.
	Smalltalk addToShutDownList: self.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:22'
}
PicConstants class >> initializeConstants [
"
self initializeConstants.
"
	ZeroPointInt := 0 @ 0.
	ZeroPointFloat := 0.0 @ 0.0.
	TransparentFillStyle := SolidFillStyle color: Color transparent.
	TransparentBorderStyle := SimpleBorder width: 0 color: Color transparent.
	InfiniteRectangle := Rectangle
		origin: SmallInteger minVal asPoint
		corner: SmallInteger maxVal asPoint.
	
	{ZeroPointInt. ZeroPointFloat. TransparentFillStyle. TransparentBorderStyle. InfiniteRectangle } do: [:obj |
		obj beReadOnlyObject].
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 5/20/2022 15:32'
}
PicConstants class >> initializeObjectPools [
"
self initializeObjectPools.
"
	PointPool := PicObjectPool instantiation: [Point new].
	RectanglePool := PicObjectPool instantiation: [PicRectangle basicNew].
	TransformPool := PicObjectPool instantiation: [PicMatrix2x3 identity].
	
	ImagePrimPool := PicObjectPool instantiation: [PicImagePrim new].
	LinePrimPool := PicObjectPool instantiation: [PicLinePrim new].
	ParagraphPrimPool := PicObjectPool instantiation: [PicParagraphPrim new].
	OvalPrimPool := PicObjectPool instantiation: [PicOvalPrim new].
	PolygonPrimPool := PicObjectPool instantiation: [PicPolygonPrim new].
	RectanglePrimPool := PicObjectPool instantiation: [PicRectanglePrim new].
	RoundedRectanglePrimPool := PicObjectPool instantiation: [PicRoundedRectanglePrim new].
	TextRunPrimPool := PicObjectPool instantiation: [PicTextRunPrim new].
	
	ClipBeginPool := PicObjectPool instantiation: [PicClipBegin new].
	PictureBeginPool := PicObjectPool instantiation: [PicPictureBegin new].
	TransformBeginPool := PicObjectPool instantiation: [PicTransformBegin new].
	TranslationBeginPool := PicObjectPool instantiation: [PicTranslationBegin new].
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:30'
}
PicConstants class >> initializePictureProperty [
"
self initializePictureProperty.
"
	(MorphExtension instVarNames includes: 'picture') ifFalse: [
		MorphExtension addInstVarName: 'picture'].
	
	MorphExtension createGetterFor: 'picture'.
	MorphExtension createSetterFor: 'picture'.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:33'
}
PicConstants class >> removePictureProperty [
"
self removePictureProperty.
"
	(MorphExtension instVarNames includes: 'picture') ifTrue: [
		MorphExtension removeInstVarName: 'picture'].
	
	MorphExtension removeSelector: #picture.
	MorphExtension removeSelector: #picture:.
]

{
	#category : #'system startup',
	#'squeak_changestamp' : 'stlu 5/13/2022 15:23'
}
PicConstants class >> shutDown: quitting [

	self initializeObjectPools.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:34'
}
PicConstants class >> unload [

	Smalltalk removeFromShutDownList: self.
	self removePictureProperty.
]
