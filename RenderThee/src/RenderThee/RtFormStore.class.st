Class {
	#name : #RtFormStore,
	#superclass : #RtImageStore,
	#instVars : [
		'form'
	],
	#category : #'RenderThee-LayerTree'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore class >> defaultCanvasClass [

	^ FormCanvas
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore class >> extent: aPoint [

	^ self form: (Form extent: aPoint depth: Display depth)
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore class >> form: aForm [

	^ self new
		form: aForm;
		yourself
]

{
	#category : #textures,
	#'squeak_changestamp' : 'stlu 5/15/2021 13:08'
}
RtFormStore >> createGLTexture [

	^ GLTexture2D create
		image: form;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore >> extent [

	^ form extent
]

{
	#category : #textures,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore >> form [

	^ form
]

{
	#category : #textures,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore >> form: aForm [

	form := aForm
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore >> getCanvas [

	^ form getCanvas
]

{
	#category : #textures,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtFormStore >> glTextureDo: aBlock [

	| tex |
	tex := self createGLTexture.
	aBlock value: tex.
	tex delete
]
