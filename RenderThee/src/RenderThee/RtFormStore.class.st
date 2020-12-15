Class {
	#name : #RtFormStore,
	#superclass : #RtImageStore,
	#instVars : [
		'form'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore class >> defaultCanvasClass [

	^ FormCanvas
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore class >> extent: aPoint [

	^ self form: (Form extent: aPoint depth: Display depth)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore class >> form: aForm [

	^ self new
		form: aForm;
		yourself
]

{
	#category : #textures,
	#timestamp : 'stlu 11/3/2020 16:00'
}
RtFormStore >> createGLTexture [

	^ GL2DTexture create
		image: form;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore >> extent [

	^ form extent
]

{
	#category : #textures,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore >> form [

	^ form
]

{
	#category : #textures,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore >> form: aForm [

	form := aForm
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore >> getCanvas [

	^ form getCanvas
]

{
	#category : #textures,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFormStore >> glTextureDo: aBlock [

	| tex |
	tex := self createGLTexture.
	aBlock value: tex.
	tex delete
]
