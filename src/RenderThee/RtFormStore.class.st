Class {
	#name : #RtFormStore,
	#superclass : #RtImageStore,
	#instVars : [
		'form'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #textures }
RtFormStore >> createGLTexture [

	^ GLTexture new
		image: form;
		yourself
]

{ #category : #textures }
RtFormStore >> glTextureDo: aBlock [

	| tex |
	tex := self createTexture.
	aBlock value: tex.
	tex delete
]
