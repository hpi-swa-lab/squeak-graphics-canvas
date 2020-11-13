Class {
	#name : #RtDisplayFormStore,
	#superclass : #RtFormStore,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFormStore >> form: aForm [

	"do nothing"
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFormStore >> initialize [

	super initialize.
	form := Display
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFormStore >> tryDeferringUpdates [

	PasteUpMorph disableDeferredUpdates ifTrue: [^ false].
	(form deferUpdates: true) ifNil: [^ false].
	^ true
]
