"
Class TextureHandle represents a texture handle for internal use by the texture manager.

Instance variables:
	glID			<Integer>	The 'texture name' of OpenGL associated with this texture
	target		<Integer>	The OpenGL target (e.g., GLTexture2d)
	timeStamp	<Integer>	The stamp for the frame when this texture was last used
	scaledSize	<Point>		The ultimate size the texture needs to be scaled to (power of two)
	bytesUsed	<Integer>	The number of bytes associated with this texture on the graphics hardware
	allocated 	<Boolean>	True if the texture is currently allocated on the graphics hardware, false if not.
	displayLists <Set> 		Set of all of the OGL display lists that use this texture
"
Class {
	#name : #OGLTextureHandle,
	#superclass : #Object,
	#instVars : [
		'glID',
		'objectID',
		'target',
		'timeStamp',
		'scaledSize',
		'bytesUsed',
		'allocated'
	],
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Deprecated'
}

{ #category : #accessing }
OGLTextureHandle >> bytesUsed [
	^bytesUsed
]

{ #category : #accessing }
OGLTextureHandle >> bytesUsed: nBytes [
	bytesUsed := nBytes
]

{ #category : #accessing }
OGLTextureHandle >> glID [
	^glID
]

{ #category : #accessing }
OGLTextureHandle >> glID: aNumber [
	glID := aNumber
]

{ #category : #accessing }
OGLTextureHandle >> isAllocated [
	^allocated
]

{ #category : #accessing }
OGLTextureHandle >> isAllocated: aBool [
	allocated := aBool
]

{ #category : #accessing }
OGLTextureHandle >> objectID [

	^objectID.
]

{ #category : #accessing }
OGLTextureHandle >> objectID: oid [

	objectID := oid.
]

{ #category : #printing }
OGLTextureHandle >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll:'('; print: glID; nextPutAll:', '; print: scaledSize; nextPutAll:', '; print: timeStamp; nextPutAll:')'.
]

{ #category : #accessing }
OGLTextureHandle >> scaledSize [
	^scaledSize
]

{ #category : #accessing }
OGLTextureHandle >> scaledSize: aPoint [
	scaledSize := aPoint
]

{ #category : #accessing }
OGLTextureHandle >> target [
	^target
]

{ #category : #accessing }
OGLTextureHandle >> target: aNumber [
	target := aNumber
]

{ #category : #accessing }
OGLTextureHandle >> timeStamp [
	^timeStamp
]

{ #category : #accessing }
OGLTextureHandle >> timeStamp: aStamp [
	timeStamp := aStamp
]
