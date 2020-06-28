Class {
	#name : #RtDrawCommand,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : 'RenderThee-Drawing'
}

{ #category : #drawing }
RtDrawCommand >> drawOn: aCanvas [

	self subclassResponsibility
]

{ #category : #drawing }
RtDrawCommand >> imageForm [

	| canvas |
	canvas := FormCanvas extent: self clipRect extent.
	self drawOn: canvas.
	^ canvas form copy: self clipRect
]

{ #category : #testing }
RtDrawCommand >> isLayer [

	^ false
]

{ #category : #testing }
RtDrawCommand >> isRoot [

	^ self false
]

{ #category : #accessing }
RtDrawCommand >> parent [

	^ parent
]

{ #category : #accessing }
RtDrawCommand >> parent: anObject [

	parent := anObject
]

{ #category : #visiting }
RtDrawCommand >> visit: aVisitor [

	self subclassResponsibility
]
