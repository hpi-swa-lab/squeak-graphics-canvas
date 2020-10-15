Class {
	#name : #RtDisplayFormStore,
	#superclass : #RtFormStore,
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtDisplayFormStore >> form: aForm [

	"do nothing"
]

{ #category : #initialization }
RtDisplayFormStore >> initialize [

	super initialize.
	form := Display
]

{ #category : #drawing }
RtDisplayFormStore >> prepareForDrawingOn: aCanvas during: aBlock [

	| isDeferred canvas |
	canvas := aCanvas.
	isDeferred := self tryDeferringUpdates.
	aBlock cull: aCanvas.
	form
		deferUpdates: false;
		forceDisplayUpdate
]

{ #category : #drawing }
RtDisplayFormStore >> tryDeferringUpdates [

	PasteUpMorph disableDeferredUpdates ifTrue: [^ false].
	(form deferUpdates: true) ifNil: [^ false].
	^ true
]
