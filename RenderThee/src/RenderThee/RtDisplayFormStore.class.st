Class {
	#name : #RtDisplayFormStore,
	#superclass : #RtFormStore,
	#category : #'RenderThee-LayerTree',
	#'squeak_changestamp' : ''
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDisplayFormStore >> form: aForm [

	"do nothing"
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDisplayFormStore >> initialize [

	super initialize.
	form := Display
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDisplayFormStore >> tryDeferringUpdates [

	PasteUpMorph disableDeferredUpdates ifTrue: [^ false].
	(form deferUpdates: true) ifNil: [^ false].
	^ true
]
