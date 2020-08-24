"
I record incoming draw calls to build a layer tree.
The built tree will consist of `RtLayer`s.
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

{ #category : #examples }
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

{ #category : #examples }
RtRecordingCanvas class >> example2 [
	"self example2"
	(self record: ActiveWorld) rootLayer open
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> extent: aPoint [

	^ self rootLayer: (RtGroupLayer bounds: (0@0 extent: aPoint))
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> record: aMorph [

	^ (self extent: aMorph extent)
		record: aMorph
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> rootLayer: aGroupLayer [

	^ self new
		rootLayer: aGroupLayer;
		yourself
]

{ #category : #accessing }
RtRecordingCanvas >> addLayer: aLayer [

	self endPicture.
	rootLayer addChild: aLayer
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> changeGroupLayerTo: aLayer during: aBlock [

	self endPicture.
	
	self rootLayer: aLayer during: [
		self pictureCanvas: PicPictureCanvas new during: [
			self translateBy: aLayer offset negated during: [:c |
				aBlock cull: c.
				self endPicture]]].
	
	rootLayer addChild: aLayer
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> endPicture [

	| picture |
	picture := wrappedCanvas getPicture.
	wrappedCanvas clear.
	picture isDrawing ifTrue: [
		rootLayer addChild: (RtDrawLayer picture: picture)]
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> fullDraw: anObject [

	anObject groupLayer: rootLayer.
	super fullDraw: anObject
]

{ #category : #'repaint boundaries' }
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

{ #category : #initialization }
RtRecordingCanvas >> initialize [

	super initialize.
	wrappedCanvas := PicPictureCanvas new
]

{ #category : #accessing }
RtRecordingCanvas >> isReRecording [

	^ isReRecording ifNil: [false]
]

{ #category : #accessing }
RtRecordingCanvas >> isReRecording: anObject [

	isReRecording := anObject
]

{ #category : #testing }
RtRecordingCanvas >> isReusingLayers [

	^ self isReRecording
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> newGroupLayerFor: aMorph [

	| newLayer |
	newLayer := RtGroupLayer
					outerTransform: wrappedCanvas transform
					bounds: aMorph bounds. "outerBounds?"
	newLayer morph: aMorph.
	^ newLayer
]

{ #category : #'scoped state' }
RtRecordingCanvas >> pictureCanvas: aCanvas during: aBlock [

	| previousCanvas |
	previousCanvas := wrappedCanvas.
	wrappedCanvas := aCanvas.
	aBlock cull: self.
	wrappedCanvas := previousCanvas
]

{ #category : #recording }
RtRecordingCanvas >> reRecord: aMorph [

	self isReRecording: true.
	self record: aMorph
]

{ #category : #recording }
RtRecordingCanvas >> record: aMorph [

	rootLayer morph: aMorph.
	self translateBy: aMorph position negated during: [:c |
		self fullDraw: aMorph.
		self endPicture]
]

{ #category : #accessing }
RtRecordingCanvas >> rootLayer [

	^ rootLayer
]

{ #category : #accessing }
RtRecordingCanvas >> rootLayer: aGroupLayer [

	rootLayer := aGroupLayer
]

{ #category : #'scoped state' }
RtRecordingCanvas >> rootLayer: aLayer during: aBlock [

	| previousLayer |
	previousLayer := rootLayer.
	rootLayer := aLayer.
	aBlock cull: self.
	rootLayer := previousLayer
]
