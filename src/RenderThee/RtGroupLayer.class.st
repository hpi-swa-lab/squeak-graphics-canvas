Class {
	#name : #RtGroupLayer,
	#superclass : #RtLayer,
	#instVars : [
		'children'
	],
	#pools : [
		'GLConstants'
	],
	#category : 'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtGroupLayer class >> bounds: aRectangle [

	^ self new
		bounds: aRectangle;
		yourself
]

{ #category : #'instance creation' }
RtGroupLayer class >> offset: offset extent: extent [

	^ self transform: (Matrix4x4 withOffset: offset asVector3) extent: extent
]

{ #category : #'instance creation' }
RtGroupLayer class >> transform: aMatrix extent: extent [

	^ self new
		transform: aMatrix;
		extent: extent;
		yourself
]

{ #category : #accessing }
RtGroupLayer >> addChild: aLayer [

	children add: aLayer.
	aLayer parent: self
]

{ #category : #accessing }
RtGroupLayer >> bounds [

	^ self transform translation asPoint extent: self extent
]

{ #category : #visiting }
RtGroupLayer >> children [

	^ children
]

{ #category : #accessing }
RtGroupLayer >> clear [

	children do: [ :child | child parent: nil ].

	children := OrderedCollection new
]

{ #category : #drawing }
RtGroupLayer >> drawChildrenOn: canvas [

	children do: [:layer | layer drawOn: canvas]
]

{ #category : #drawing }
RtGroupLayer >> drawOn: aCanvas [

	self drawChildrenOn: aCanvas
]

{ #category : #initialization }
RtGroupLayer >> initialize [

	super initialize.
	children := OrderedCollection new
]

{ #category : #accessing }
RtGroupLayer >> layers [

	^ children
]

{ #category : #drawing }
RtGroupLayer >> restoreFramebufferOf: aRenderer after: aBlock [
	| oldFramebuffer oldExtent ogl oldViewport ret |
	ogl := GL value.
	
	oldFramebuffer := aRenderer currentFramebuffer.
	oldExtent := aRenderer currentExtent.
	oldViewport := IntegerArray new: 4.
	ogl glGetIntegerv: GL_VIEWPORT with: oldViewport.
	
	ret := aBlock value.
	
	aRenderer currentFramebuffer: oldFramebuffer.
	aRenderer currentExtent: oldExtent.
	self flag: #todo. "scoped bind possible ?"
	oldFramebuffer ifNotNil: [ oldFramebuffer bind ].
	ogl glViewport: oldViewport first with: oldViewport second with: oldViewport third with: oldViewport fourth.
	
	^ ret
]

{ #category : #visiting }
RtGroupLayer >> visit: aVisitor [

	aVisitor visitGroupLayer: self
]
