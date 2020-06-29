Class {
	#name : #RtOpenGLVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'matrixStack',
		'drawCallback',
		'renderer'
	],
	#pools : [
		'GLConstants'
	],
	#category : 'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtOpenGLVisitor class >> new [
	self shouldNotImplement
]

{ #category : #'instance creation' }
RtOpenGLVisitor class >> new: aRenderer [
	^ (self basicNew) initialize: aRenderer
]

{ #category : #accessing }
RtOpenGLVisitor >> drawCallback: aBlock [

	drawCallback := aBlock
]

{ #category : #initialization }
RtOpenGLVisitor >> initialize: aRenderer [
	renderer := aRenderer
]

{ #category : #accessing }
RtOpenGLVisitor >> rootMatrix: aMatrix [

	matrixStack := OrderedCollection with: aMatrix
]

{ #category : #visiting }
RtOpenGLVisitor >> visitDrawLayer: aLayer [

	self visitLayer: aLayer
]

{ #category : #visiting }
RtOpenGLVisitor >> visitGroupLayer: aLayer [

	self visitLayer: aLayer
]

{ #category : #visiting }
RtOpenGLVisitor >> visitLayer: aLayer [

	matrixStack addLast: matrixStack last * aLayer transform.
	
	aLayer isRasterized
		ifTrue: [
			drawCallback value: matrixStack last * (Matrix4x4 withScale: aLayer extent @ 1) value: (aLayer assuredTexture: renderer)]
		ifFalse: [
			aLayer children do: [:child | child visit: self]].
	
	matrixStack removeLast
]
