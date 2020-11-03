Class {
	#name : #GL2DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GL2DTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D
]

{ #category : #binding }
GL2DTexture class >> target [

	^ GL_TEXTURE_2D
]

{ #category : #binding }
GL2DTexture >> asForm [

	| bufSize data |
	bufSize := self extent area * 4.
	data := ByteArray new: bufSize.
	GL
		getTextureImage: id
		with: 0
		with: GL_BGRA
		with: GL_UNSIGNED_INT_8_8_8_8
		with: bufSize
		with: data.
	^ Form
		extent: self extent
		depth: 32
		bits: ((Bitmap new: bufSize)
			copyFromByteArray: data;
			yourself)
]

{ #category : #binding }
GL2DTexture >> bind: anID [

	GL bindTexture: GL_TEXTURE_2D with: anID
]

{ #category : #binding }
GL2DTexture >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D
]

{ #category : #'initialize-release' }
GL2DTexture >> delete [

	GL deleteTextures: 1 with: (IntegerArray with: id)
]

{ #category : #accessing }
GL2DTexture >> extent [

	^ self width @ self height
]

{ #category : #accessing }
GL2DTexture >> extent: aPoint [

	self boundDuring: [
		GL
			texImage2D: GL_TEXTURE_2D
			with: 0
			with: GL_RGBA
			with: aPoint x truncated
			with: aPoint y truncated
			with: 0
			with: GL_BGRA
			with: GL_UNSIGNED_BYTE
			with: nil.
		GL checkForError.
		GL
			texParameteri: GL_TEXTURE_2D
			with: GL_TEXTURE_MIN_FILTER
			with: GL_LINEAR.
		GL
			texParameteri: GL_TEXTURE_2D
			with: GL_TEXTURE_MAG_FILTER
			with: GL_LINEAR]
]

{ #category : #private }
GL2DTexture >> getTextureParameterI: parameter [

	self boundDuring: [
		IntegerArray new: 1 during: [:result |
			GL getTexLevelParameteriv: GL_TEXTURE_2D with: 0 with: parameter with: result.
			^ result first]]
]

{ #category : #accessing }
GL2DTexture >> height [

	^ self getTextureParameterI: GL_TEXTURE_HEIGHT
]

{ #category : #accessing }
GL2DTexture >> image: aForm [

	self image: aForm minFilter: GL_LINEAR magFilter: GL_LINEAR
]

{ #category : #accessing }
GL2DTexture >> image: aForm minFilter: anEnum magFilter: anEnum2 [

	self boundDuring: [
			GL
				texImage2D: GL_TEXTURE_2D
				with: 0
				with: GL_RGBA
				with: aForm width
				with: aForm height
				with: 0
				with: GL_BGRA
				with: GL_UNSIGNED_BYTE
				with: (aForm asFormOfDepth: 32) bits.
			GL checkForError.
			GL
				texParameteri: GL_TEXTURE_2D
				with: GL_TEXTURE_MIN_FILTER
				with: anEnum.
			GL
				texParameteri: GL_TEXTURE_2D
				with: GL_TEXTURE_MAG_FILTER
				with: anEnum]
]

{ #category : #accessing }
GL2DTexture >> subImage: aForm at: aPoint [

	self boundDuring: [
		GL checkForError.
		GL
			texSubImage2D: GL_TEXTURE_2D
			with: 0
			with: aPoint x
			with: aPoint y
			with: aForm width
			with: aForm height
			with: GL_BGRA
			with: GL_UNSIGNED_BYTE
			with: (aForm asFormOfDepth: 32) bits.
		GL checkForError]
]

{ #category : #accessing }
GL2DTexture >> width [

	^ self getTextureParameterI: GL_TEXTURE_WIDTH
]
