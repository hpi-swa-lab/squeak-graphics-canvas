Class {
	#name : #RtFormCanvas,
	#superclass : #FormCanvas,
	#instVars : [
		'saveStack',
		'transform'
	],
	#category : #'RenderThee-CanvasCommands'
}

{ #category : #accessing }
RtFormCanvas >> clipRect: aRectangle [

	self setClipRect: ((aRectangle translateBy: origin) intersect: clipRect)
]

{ #category : #accessing }
RtFormCanvas >> concat: aMatrix [

	self setTransform: transform * aMatrix
]

{ #category : #initialization }
RtFormCanvas >> initialize [

	super initialize.
	saveStack := OrderedCollection new.
	transform := Matrix4x4 identity
]

{ #category : #'saving / restoring' }
RtFormCanvas >> restore [

	| pop |
	pop := saveStack removeLast.
	self setClipRect: pop first.
	self setTransform: pop second
]

{ #category : #'saving / restoring' }
RtFormCanvas >> save [

	saveStack add: { clipRect . transform . form }
]

{ #category : #'saving / restoring' }
RtFormCanvas >> saveLayer: bounds [

	self notYetImplemented.
	self save.
	form := Form extent: bounds extent depth: self depth.
	clipRect := bounds.
	self resetGrafPort
]

{ #category : #accessing }
RtFormCanvas >> setClipRect: aRectangle [

	clipRect := aRectangle.
	port clipRect: aRectangle
]

{ #category : #accessing }
RtFormCanvas >> setTransform: aMatrix [

	transform := aMatrix.
	origin := aMatrix translation asPoint
]
