Class {
	#name : #RtFormStore,
	#superclass : #RtImageStore,
	#instVars : [
		'form'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtFormStore class >> defaultCanvasClass [

	^ FormCanvas
]

{ #category : #'as yet unclassified' }
RtFormStore class >> form: aForm [

	^ self new
		form: aForm;
		yourself
]

{ #category : #textures }
RtFormStore >> createGLTexture [

	^ (GL value createObject: GLTexture)
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

{ #category : #textures }
RtFormStore >> glTextureDo: aBlock [

	| tex |
	tex := self createGLTexture.
	aBlock value: tex.
	tex delete
]
