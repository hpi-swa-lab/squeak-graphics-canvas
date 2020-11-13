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
	#timestamp : ''
}
RtFormStore class >> defaultCanvasClass [

	^ FormCanvas
]

{
	#category : #'instance creation',
	#timestamp : ''
}
RtFormStore class >> extent: aPoint [

	^ self form: (Form extent: aPoint depth: Display depth)
]

{
	#category : #'instance creation',
	#timestamp : ''
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
	#timestamp : ''
}
RtFormStore >> extent [

	^ form extent
]

{
	#category : #textures,
	#timestamp : ''
}
RtFormStore >> form [

	^ form
]

{
	#category : #textures,
	#timestamp : ''
}
RtFormStore >> form: aForm [

	form := aForm
]

{
	#category : #accessing,
	#timestamp : ''
}
RtFormStore >> getCanvas [

	^ form getCanvas
]

{
	#category : #textures,
	#timestamp : ''
}
RtFormStore >> glTextureDo: aBlock [

	| tex |
	tex := self createGLTexture.
	aBlock value: tex.
	tex delete
]
