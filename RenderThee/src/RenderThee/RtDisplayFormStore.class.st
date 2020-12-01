Class {
	#name : #RtDisplayFormStore,
	#superclass : #RtFormStore,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
RtDisplayFormStore >> form: aForm [

	"do nothing"
]

{
	#category : #initialization,
	#timestamp : ''
}
RtDisplayFormStore >> initialize [

	super initialize.
	form := Display
]

{
	#category : #drawing,
	#timestamp : ''
}
RtDisplayFormStore >> prepareForDrawingOn: aCanvas during: aBlock [

	| isDeferred canvas |
	canvas := aCanvas.
	isDeferred := self tryDeferringUpdates.
	aBlock cull: aCanvas.
	form
		deferUpdates: false;
		forceDisplayUpdate
]

{
	#category : #drawing,
	#timestamp : ''
}
RtDisplayFormStore >> tryDeferringUpdates [

	PasteUpMorph disableDeferredUpdates ifTrue: [^ false].
	(form deferUpdates: true) ifNil: [^ false].
	^ true
]
