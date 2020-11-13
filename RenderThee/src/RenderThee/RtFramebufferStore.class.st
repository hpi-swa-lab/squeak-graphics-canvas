"
A RtFramebufferStore is a target for storing drawing operations in pixels utilizing OpenGL Framebuffers.
To act accordingly, the RtFramebufferStore uses a OpenGL Framebuffer and Texture objects.

Instance Variables
	extent:		of the Framebuffer and Texture respectively
	framebuffer:		OpenGL fbo linked in this Image Store
	texture:		Texture used in harmony with the framebuffer


"
Class {
	#name : #RtFramebufferStore,
	#superclass : #RtImageStore,
	#instVars : [
		'texture',
		'framebuffer',
		'extent'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore class >> defaultCanvasClass [

	^ GLCanvas
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore class >> extent: aPoint [

	^ self new
		initializeWithExtent: aPoint;
		yourself
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore class >> form: aForm [

	^ self new
		initializeWithForm: aForm;
		yourself
]

{
	#category : #'gl calls',
	#timestamp : 'stlu 11/3/2020 15:43'
}
RtFramebufferStore >> clear [

	framebuffer boundDuring: [
		framebuffer library clear: GL_COLOR_BUFFER_BIT]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> displayTransform [

	^ Matrix4x4 identity
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> extent [

	^ extent
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> extent: aPoint [

	extent := aPoint
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> extentChanged [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> form [

	^ texture asForm
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> framebuffer [

	^ framebuffer
]

{
	#category : #private,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> getCanvas [

	^ self class defaultCanvasClass extent: extent framebuffer: framebuffer
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:21'
}
RtFramebufferStore >> glLibrary [

	^ framebuffer ifNotNil: [framebuffer library] ifNil: [texture library]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> glTextureDo: aBlock [

	aBlock value: texture
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:43'
}
RtFramebufferStore >> initializeGLSettings [

	self glLibrary clearColor: 1 with: 1 with: 1 with: 0
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/28/2020 23:48'
}
RtFramebufferStore >> initializeWithExtent: aPoint [

	extent := aPoint.
	
	framebuffer := GLFrameBuffer create.
	texture := GL2DTexture create.
	
	texture extent: extent.
	framebuffer texture2D: texture
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/28/2020 23:48'
}
RtFramebufferStore >> initializeWithForm: aForm [

	extent := aForm extent.
	texture := GL2DTexture create.
	texture image: aForm
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aCanvas
		transformBy: self displayTransform
		during: [:c |
			framebuffer boundDuring: [
				self glLibrary viewport: (0@0 extent: extent) during: [
					self initializeGLSettings.
					self clear.
					aBlock cull: c]]]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> release [

	super release.
	texture ifNotNil: [texture delete].
	framebuffer ifNotNil: [framebuffer delete]
	
]

{
	#category : #'gl calls',
	#timestamp : 'stlu 11/3/2020 15:44'
}
RtFramebufferStore >> resetViewport [

	self glLibrary setViewport: (0 @ 0 extent: extent)
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtFramebufferStore >> texture [

	^ texture
]
