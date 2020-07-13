Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint [

	^ self frameBuffer: (self newFrameBuffer: aPoint)
]

{ #category : #'drawing-images' }
GLCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	
]
