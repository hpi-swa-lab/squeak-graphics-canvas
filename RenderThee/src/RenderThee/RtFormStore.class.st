Class {
	#name : #RtFormStore,
	#superclass : #RtImageStore,
	#instVars : [
		'form'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtFormStore class >> defaultCanvasClass [

	^ FormCanvas
]

{ #category : #'instance creation' }
RtFormStore class >> extent: aPoint [

	^ self form: (Form extent: aPoint depth: Display depth)
]

{ #category : #'instance creation' }
RtFormStore class >> form: aForm [

	^ self new
		form: aForm;
		yourself
]

{ #category : #textures }
RtFormStore >> createGLTexture [

	^ GL2DTexture create
		image: form;
		yourself
]

{ #category : #accessing }
RtFormStore >> extent [

	^ form extent
]

{ #category : #textures }
RtFormStore >> form [

	^ form
]

{ #category : #textures }
RtFormStore >> form: aForm [

	form := aForm
]

{ #category : #accessing }
RtFormStore >> getCanvas [

	^ form getCanvas
]

{ #category : #textures }
RtFormStore >> glTextureDo: aBlock [

	| tex |
	tex := self createGLTexture.
	aBlock value: tex.
	tex delete
]
