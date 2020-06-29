Class {
	#name : #RtRecordingCanvas,
	#superclass : #Canvas,
	#instVars : [
		'drawLayer',
		'layer',
		'origin'
	],
	#category : 'RenderThee-Core'
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
RtRecordingCanvas class >> layer: aLayer [

	^ self new
		origin: 0@0;
		layer: aLayer;
		yourself
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> record: aMorph [

	^ (self rootWithExtent: aMorph extent)
		record: aMorph;
		yourself
]

{ #category : #'instance creation' }
RtRecordingCanvas class >> rootWithExtent: aPoint [

	^ self layer: (RtGroupLayer offset: 0@0 extent: aPoint)
]

{ #category : #private }
RtRecordingCanvas >> addCommand: aCommand [

	self assuredDrawLayer addCommand: aCommand
]

{ #category : #private }
RtRecordingCanvas >> addLayer: aLayer [

	self endDrawLayer.
	self layer addChild: aLayer
]

{ #category : #accessing }
RtRecordingCanvas >> assuredDrawLayer [

	^ drawLayer ifNil: [drawLayer := RtDrawLayer new]
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> clipBy: localClipRect during: aBlock [

	self addCommand: RtSaveCommand new.
	self addCommand: (RtClipCommand clipRect: (localClipRect translateBy: self origin negated)).
	aBlock value: self.
	self addCommand: RtRestoreCommand new
]

{ #category : #accessing }
RtRecordingCanvas >> clipRect [
	"Clipping area relative to current origin."
	^ -99999 @ -99999 corner: 99999 @ 99999 "better would be some sort of infinite rectangle"
]

{ #category : #accessing }
RtRecordingCanvas >> commands [

	^ self layer commands
]

{ #category : #'drawing-images' }
RtRecordingCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	self flag: #todo.
	super drawImage: aForm at: aPoint sourceRect: sourceRect
]

{ #category : #accessing }
RtRecordingCanvas >> drawLayer [

	^ drawLayer
]

{ #category : #'drawing-polygons' }
RtRecordingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	self
		drawPolygon: vertices
		fillStyle: (SolidFillStyle color: aColor)
		borderWidth: bw borderColor: bc
]

{ #category : #'drawing-polygons' }
RtRecordingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	self flag: #todo. "coordinates"
	self addCommand: (RtDrawPolygon
							vertices: vertices
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)
]

{ #category : #'drawing-polygons' }
RtRecordingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{ #category : #'drawing-text' }
RtRecordingCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	self addCommand: (RtDrawString
							contents: s
							from: firstIndex
							to: lastIndex
							in: (boundsRect translateBy: self origin negated)
							font: fontOrNil
							color: c)
]

{ #category : #private }
RtRecordingCanvas >> endDrawLayer [

	(self drawLayer notNil and: [self drawLayer isEmpty not]) ifTrue: [
		self layer addChild: (self drawLayer
			transform: Matrix4x4 identity;
			extent: self layer extent;
			yourself).
		self resetDrawLayer]
]

{ #category : #'drawing-ovals' }
RtRecordingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	self
		fillOval: r
		fillStyle: (SolidFillStyle color: c)
		borderWidth: borderWidth
		borderColor: borderColor
]

{ #category : #'drawing-ovals' }
RtRecordingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	self addCommand: (RtDrawOval
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)
]

{ #category : #'drawing-ovals' }
RtRecordingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{ #category : #'drawing-rectangles' }
RtRecordingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self addCommand: (RtDrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle)
]

{ #category : #initialization }
RtRecordingCanvas >> finish [

	self flag: #todo
]

{ #category : #initialization }
RtRecordingCanvas >> flush [

	self flag: #todo
]

{ #category : #'drawing-rectangles' }
RtRecordingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)
]

{ #category : #'drawing-rectangles' }
RtRecordingCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	self addCommand: (RtDrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)
]

{ #category : #'drawing-rectangles' }
RtRecordingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	self addCommand: (RtDrawRoundedRectangle
							bounds: (aRectangle translateBy: self origin negated)
							radius: cornerRadius
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)
]

{ #category : #'drawing-rectangles' }
RtRecordingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

	self
		frameAndFillRoundRect: aRectangle
		radius: cornerRadius
		fillStyle: fillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{ #category : #'drawing-rectangles' }
RtRecordingCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self addCommand: (RtDrawRectangle
							bounds: (aRectangle translateBy: self origin negated)
							borderStyle: aBorderStyle)
]

{ #category : #'drawing-general' }
RtRecordingCanvas >> fullDrawInCurrentLayer: aMorph [

	aMorph groupLayer: self layer.
	self fullDraw: aMorph
]

{ #category : #'drawing-general' }
RtRecordingCanvas >> fullDrawInNewLayer: aMorph [

	self
		newCurrentLayer: (RtGroupLayer
							bounds: (aMorph bounds translateBy: self origin negated)) "outerBounds?"
		newOrigin: aMorph position
		during: [:canvas | self fullDrawInCurrentLayer: aMorph]
]

{ #category : #'drawing-general' }
RtRecordingCanvas >> fullDrawMorph: aMorph [

	aMorph isRepaintBoundary
		ifTrue: [	self fullDrawInNewLayer: aMorph]
		ifFalse: [self fullDrawInCurrentLayer: aMorph]
]

{ #category : #private }
RtRecordingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self addCommand: (RtDrawImage
							form: aForm
							origin: (aPoint translateBy: self origin negated)
							sourceRect: sourceRect
							rule: rule)
]

{ #category : #testing }
RtRecordingCanvas >> isVisible: aRectangle [

	^ true
]

{ #category : #accessing }
RtRecordingCanvas >> layer [

	^ layer
]

{ #category : #accessing }
RtRecordingCanvas >> layer: anObject [

	layer := anObject
]

{ #category : #drawing }
RtRecordingCanvas >> line: from to: to width: width color: color [

	self addCommand: (RtDrawLine
							from: (from translateBy: self origin negated)
							to: (to translateBy: self origin negated)
							width: width
							color: color)
]

{ #category : #private }
RtRecordingCanvas >> newCurrentLayer: aLayer newOrigin: newOrigin during: aBlock [

	| previousLayer |
	previousLayer := self layer.
	self addLayer: aLayer.
	self layer: aLayer.
	self newOrigin: newOrigin during: aBlock.
	self endDrawLayer.
	self layer: previousLayer.
	^ aLayer
]

{ #category : #private }
RtRecordingCanvas >> newOrigin: newOrigin during: aBlock [

	| previousOrigin |
	previousOrigin := self origin.
	self origin: newOrigin.
	aBlock value: self.
	self origin: previousOrigin
]

{ #category : #accessing }
RtRecordingCanvas >> origin [
	"Origin relative to root layer."
	^ origin
]

{ #category : #accessing }
RtRecordingCanvas >> origin: aPoint [

	origin := aPoint
]

{ #category : #'drawing-images' }
RtRecordingCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	self flag: #todo.
	super paintImage: aForm at: aPoint sourceRect: sourceRect
]

{ #category : #drawing }
RtRecordingCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	self addCommand: (RtDrawParagraph
							paragraph: aParagraph
							bounds: (aRectangle translateBy: self origin negated)
							color: aColor)
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> preserveStateDuring: aBlock [

	self unsupported: #preserveStateDuring.
	aBlock value: self
]

{ #category : #public }
RtRecordingCanvas >> record: aMorph [

	self fullDrawMorph: aMorph
]

{ #category : #drawing }
RtRecordingCanvas >> render: anObject [

	self unsupported: #'render:'
]

{ #category : #initialization }
RtRecordingCanvas >> reset [

	self flag: #todo
]

{ #category : #initialization }
RtRecordingCanvas >> resetDrawLayer [

	drawLayer := nil
]

{ #category : #accessing }
RtRecordingCanvas >> shadowColor [

	self flag: #todo. "currently ignored"
	^ nil
]

{ #category : #'drawing-images' }
RtRecordingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	self unsupported: #'stencil:at:sourceRect:color:'
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> transformBy: aDisplayTransform clippingTo: localClipRect during: aBlock smoothing: cellSize [

	aDisplayTransform isPureTranslation ifTrue: [
		^ self
			translateBy: aDisplayTransform offset negated truncated
			clippingTo: localClipRect
			during: aBlock].
	
	self notYetImplemented.
	self flag: #todo. "disregarding localClipRect origin"
	self
		newCurrentLayer: (RtBoundaryLayer
							transform: (aDisplayTransform asMatrix4x4 translation: localClipRect origin asVector3)
							extent: localClipRect extent)
		newOrigin: aDisplayTransform offset
		during: aBlock
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> translateBy: delta clippingTo: localClipRect during: aBlock [

	self clipBy: localClipRect during: [:canvas |
		self
			newOrigin: self origin - delta
			during: aBlock]
]

{ #category : #'drawing-support' }
RtRecordingCanvas >> translateBy: delta during: aBlock [

	self
		newOrigin: self origin - delta
		during: aBlock
]

{ #category : #private }
RtRecordingCanvas >> unsupported: selector [

	self addCommand: (RtUnsupportedCommand type: selector)
]

{ #category : #'drawing-images' }
RtRecordingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self unsupported: #'warpImage:transform:at:sourceRect:cellSize:'
]
