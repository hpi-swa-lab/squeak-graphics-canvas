"
A RtRecordingCanvas records incoming draw calls to build a layer tree.
The built tree will consist of objects of RtLayer. RtRecordingCanvas is used for damaged morphs.

Instance Variables
	canvasStack:		<Object>
	groupLayer:		<Object>
	isReRecording:		<Object>
	offsetToLastTransform:		<Object>
"
Class {
	#name : #RtRecordingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'offsetToLastTransform',
		'canvasStack',
		'isReRecording',
		'groupLayer'
	],
	#category : #'RenderThee-Core'
}

{ #category : #examples }
RtRecordingCanvas class >> example01 [
	"
	self example01
	"
	| morph canvas |
	morph := Morph new
				addMorph: (TransformMorph new
								addMorph: Morph new;
								offset: 0 @ -10;
								position: 10@10;
								yourself);
				yourself.
	canvas := self record: morph.
	canvas layer open
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> extent: aPoint [

	^ self layer: (RtGroupLayer offset: 0@0 extent: aPoint)
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> layer: aLayer [

	^ self new
		layer: aLayer;
		yourself
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> record: aMorph [

	^ (self extent: aMorph extent)
		record: aMorph
]

{ #category : #accessing }
RtRecordingCanvas >> addLayer: aLayer [

	self endPicture.
	groupLayer addChild: aLayer
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> changeGroupLayerTo: aLayer withOffset: aPoint during: aBlock [

	self endPicture.
	
	self groupLayer: aLayer during: [
		self pictureCanvas: PicPictureCanvas new during: [
			self translateBy: aPoint negated during: [:c |
				aBlock cull: c.
				self endPicture]]].
	
	groupLayer addChild: aLayer
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> endPicture [

	| picture |
	picture := wrappedCanvas getPicture.
	wrappedCanvas clear.
	picture isDrawing ifTrue: [
		groupLayer addChild: (RtDrawLayer picture: picture)]
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> fullDraw: anObject [

	anObject groupLayer: groupLayer.
	super fullDraw: anObject
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> fullDrawMorph: aMorph [

	"continue drawing normally unless aMorph is a repaint boundary"
	aMorph isRepaintBoundary ifFalse: [
		^ self fullDraw: aMorph].
	
	"can we reuse an existing layer and skip drawing aMorph completely?"
	"(self isReusingLayers and: aMorph isRepaintBoundary) ifTrue: [
		aMorph groupLayer ifNotNil: [:reusableLayer |
			reusableLayer transform: (self transformForOffset: aMorph position).
			^ self addLayer: reusableLayer]]."
	
	"we need to create a new layer for aMorph"
	self
		changeGroupLayerTo: (self newGroupLayerFor: aMorph)
		withOffset: aMorph position
		during: [self fullDraw: aMorph]
]

{ #category : #'scoped state' }
RtRecordingCanvas >> groupLayer: aLayer during: aBlock [

	| previousLayer |
	previousLayer := groupLayer.
	groupLayer := aLayer.
	aBlock cull: self.
	groupLayer := previousLayer
]

{ #category : #initialization }
RtRecordingCanvas >> initialize [

	super initialize.
	wrappedCanvas := PicPictureCanvas new.
	offsetToLastTransform := 0@0
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

{ #category : #accessing }
RtRecordingCanvas >> layer [

	^ groupLayer
]

{ #category : #accessing }
RtRecordingCanvas >> layer: anObject [

	groupLayer := anObject
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> newGroupLayerFor: aMorph [

	| newLayer |
	newLayer := RtGroupLayer
					transform: (self transformForOffset: aMorph position)
					extent: aMorph extent truncated. "outerBounds?"
	newLayer morph: aMorph.
	^ newLayer
]

{ #category : #'scoped state' }
RtRecordingCanvas >> offsetToLastTransform: aPoint during: aBlock [

	| previousOffset |
	previousOffset := offsetToLastTransform.
	offsetToLastTransform := aPoint.
	aBlock cull: self.
	offsetToLastTransform := previousOffset
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

	groupLayer morph: aMorph.
	self translateBy: aMorph position negated during: [:c |
		self fullDraw: aMorph.
		self endPicture]
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> transformBy: aDisplayTransform during: aBlock [

	self offsetToLastTransform: 0@0 during: [
		super transformBy: aDisplayTransform during: aBlock]
]

{ #category : #'repaint boundaries' }
RtRecordingCanvas >> transformForOffset: aPoint [

	^ (wrappedCanvas transform
		composedWithLocal: (MatrixTransform2x3 withOffset: aPoint)) asMatrix4x4
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> translateBy: delta during: aBlock [

	self offsetToLastTransform: 0@0 during: [
		super translateBy: delta during: aBlock]
]
