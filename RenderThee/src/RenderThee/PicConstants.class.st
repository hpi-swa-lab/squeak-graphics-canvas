Class {
	#name : #PicConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ArrayPool',
		'BlankIcon12',
		'BlankIcon16',
		'ClipBeginPool',
		'Float32ArrayPool',
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
		'TextureHandlePool',
		'TransformBeginPool',
		'TransformPool',
		'TranslationBeginPool',
		'TransparentBorderStyle',
		'TransparentFillStyle',
		'UInt32ArrayPool',
		'ZeroPointFloat',
		'ZeroPointInt'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 6/15/2022 14:50'
}
PicConstants class >> initialize [
"
self initialize.
"
	self initializeConstants.
	self initializeObjectPools.
	self initializePictureProperty.
	self overrideMorphInvalidation.
	Smalltalk addToShutDownList: self.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 6/1/2022 14:06'
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
	
	BlankIcon12 := ToolIcons iconNamed: #blank.
	BlankIcon16 := ToolIcons iconNamed: #blank16.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 6/7/2022 14:30'
}
PicConstants class >> initializeObjectPools [
"
self initializeObjectPools.
"
	self flag: #todo. "object pools technically belong to separate modules"
	ArrayPool := PicArrayPool ofClass: Array.
	Float32ArrayPool := PicArrayPool ofClass: Float32Array.
	UInt32ArrayPool := PicArrayPool ofClass: WordArray.
	
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
	
	TextureHandlePool := PicObjectPool instantiation: [RtTextureHandle new].
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
	#'squeak_changestamp' : 'stlu 6/15/2022 14:48'
}
PicConstants class >> overrideMorphInvalidation [

	Morph compile: 'invalidRect: aRectangle from: aMorph
	| damageRect |
	self visible ifFalse: [ ^self ].
	aRectangle hasPositiveExtent ifFalse: [ ^self ].
	"=== begin override ==="
	self picture ifNotNil: [:picture | picture needsUpdating: true].
	"=== end override ==="
	damageRect := aRectangle.
	aMorph == self ifFalse: [
		"Clip to receiver''s clipping bounds if the damage came from a child"
		self clipSubmorphs ifTrue:[
			damageRect := aRectangle intersect: self clippingBounds]].
	owner ifNotNil: [owner invalidRect: damageRect from: self].' classified: #'*override'.
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
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 6/15/2022 14:50'
}
PicConstants class >> revertMorphInvalidationOverride [

	Morph compile: 'invalidRect: aRectangle from: aMorph
	| damageRect |
	self visible ifFalse: [ ^self ].
	aRectangle hasPositiveExtent ifFalse: [ ^self ].
	damageRect := aRectangle.
	aMorph == self ifFalse: [
		"Clip to receiver''s clipping bounds if the damage came from a child"
		self clipSubmorphs ifTrue:[
			damageRect := aRectangle intersect: self clippingBounds]].
	owner ifNotNil: [owner invalidRect: damageRect from: self].' classified: #'change reporting'.
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
	#'squeak_changestamp' : 'stlu 6/15/2022 14:51'
}
PicConstants class >> unload [

	Smalltalk removeFromShutDownList: self.
	self revertMorphInvalidationOverride.
	self removePictureProperty.
]
