"
I record the drawing of a Morph to build a layer tree.
A Morph can request to be recorded into its own group layer by overwriting `Morph >> #isRepaintBoundary`.
"
Class {
	#name : #RtRecordingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'isReRecording',
		'rootLayer'
	],
	#category : #'RenderThee-Core'
}

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas class >> example1 [
	"self example1"
	| morph canvas |
	morph := Morph new
				addMorph: (TransformMorph new
								addMorph: Morph new;
								offset: 0 @ -10;
								position: 10@10;
								yourself);
				yourself.
	canvas := self record: morph.
	canvas rootLayer open
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas class >> example2 [
	"self example2"
	(self record: ActiveWorld) rootLayer open
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas class >> extent: aPoint [

	^ self rootLayer: (RtGroupLayer bounds: (0@0 extent: aPoint))
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas class >> record: aMorph [

	^ (self extent: aMorph extent)
		record: aMorph
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas class >> rootLayer: aGroupLayer [

	^ self new
		rootLayer: aGroupLayer;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> addLayer: aLayer [

	self endPicture.
	rootLayer addChild: aLayer
]

{
	#category : #'repaint boundaries',
	#'squeak_changestamp' : 'stlu 8/10/2021 14:54'
}
RtRecordingCanvas >> changeGroupLayerTo: aLayer during: aBlock [

	self endPicture.
	
	self rootLayer: aLayer during: [
		self pictureCanvas: PicCanvas new during: [
			self translateBy: aLayer offset negated during: [:c |
				aBlock cull: c.
				self endPicture]]].
	
	rootLayer addChild: aLayer
]

{
	#category : #'repaint boundaries',
	#'squeak_changestamp' : 'stlu 9/27/2021 13:12'
}
RtRecordingCanvas >> endPicture [

	| picture |
	picture := wrappedCanvas getPicture.
	wrappedCanvas clear.
	picture hasPrimitiveNode ifTrue: [
		rootLayer addChild: (RtDrawLayer picture: picture)]
]

{
	#category : #'repaint boundaries',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> fullDraw: anObject [

	anObject groupLayer: rootLayer.
	super fullDraw: anObject
]

{
	#category : #'repaint boundaries',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> fullDrawMorph: aMorph [

	"continue drawing normally unless aMorph is a repaint boundary"
	aMorph isRepaintBoundary ifFalse: [
		^ self fullDraw: aMorph].
	
	"can we reuse an existing layer and skip drawing aMorph completely?"
	(self isReusingLayers and: aMorph isRepaintBoundary) ifTrue: [
		aMorph groupLayer ifNotNil: [:reusableLayer |
			reusableLayer bounds: aMorph bounds. "outerBounds?"
			reusableLayer outerTransform: wrappedCanvas transform.
			^ self addLayer: reusableLayer]].
	
	"we need to create a new layer for aMorph"
	self
		changeGroupLayerTo: (self newGroupLayerFor: aMorph)
		during: [self fullDraw: aMorph]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/10/2021 14:54'
}
RtRecordingCanvas >> initialize [

	super initialize.
	wrappedCanvas := PicCanvas new
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> isReRecording [

	^ isReRecording ifNil: [false]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> isReRecording: anObject [

	isReRecording := anObject
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> isReusingLayers [

	^ self isReRecording
]

{
	#category : #'repaint boundaries',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> newGroupLayerFor: aMorph [

	| newLayer |
	newLayer := RtGroupLayer
					outerTransform: wrappedCanvas transform
					bounds: aMorph bounds. "outerBounds?"
	newLayer morph: aMorph.
	^ newLayer
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> pictureCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	aBlock cull: self.
	wrappedCanvas := previousCanvas
]

{
	#category : #recording,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> reRecord: aMorph [
	"Records aMorph under the assumption that layers reflect the current state of their respective morphs."
	self isReRecording: true.
	self record: aMorph
]

{
	#category : #recording,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> record: aMorph [

	rootLayer morph: aMorph.
	self translateBy: aMorph position negated during: [:c |
		self fullDraw: aMorph.
		self endPicture]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> rootLayer [

	^ rootLayer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> rootLayer: aGroupLayer [

	rootLayer := aGroupLayer
]

{
	#category : #'scoped state',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtRecordingCanvas >> rootLayer: aLayer during: aBlock [

	| previousLayer |
	previousLayer := rootLayer.
	rootLayer := aLayer.
	aBlock cull: self.
	rootLayer := previousLayer
]
