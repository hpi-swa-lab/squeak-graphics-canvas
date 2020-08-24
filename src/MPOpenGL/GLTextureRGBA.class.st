Class {
	#name : #GLTextureRGBA,
	#superclass : #GLObject,
	#category : #'MPOpenGL-Core'
}

{ #category : #binding }
GLTextureRGBA >> asForm [

	| bufSize data |
	bufSize := self extent area * 4.
	data := ByteArray new: bufSize.
	gl
		glGetTextureImage: id
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
GLTextureRGBA >> bind: anID [

	gl glBindTexture: GL_TEXTURE_2D with: anID
]

{ #category : #binding }
GLTextureRGBA >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D
]

{ #category : #'initialize-release' }
GLTextureRGBA >> delete [

	| texIDs |
	texIDs := IntegerArray with: id.
	gl glDeleteTextures: 1 with: texIDs
]

{ #category : #accessing }
GLTextureRGBA >> extent [
	^ self width @ self height
]

{ #category : #accessing }
GLTextureRGBA >> extent: aPoint [

	self boundDuring: [
		gl
			glTexImage2D: GL_TEXTURE_2D
			with: 0
			with: GL_RGBA
			with: aPoint x truncated
			with: aPoint y truncated
			with: 0
			with: GL_BGRA
			with: GL_UNSIGNED_BYTE
			with: nil.
		gl checkForError.
		gl
			glTexParameteri: GL_TEXTURE_2D
			with: GL_TEXTURE_MIN_FILTER
			with: GL_LINEAR.
		gl
			glTexParameteri: GL_TEXTURE_2D
			with: GL_TEXTURE_MAG_FILTER
			with: GL_LINEAR]
]

{ #category : #private }
GLTextureRGBA >> getTextureParameterI: parameter [
	
	self boundDuring: [ | array |
		array := IntegerArray new: 1.
		gl glGetTexLevelParameteriv: GL_TEXTURE_2D with: 0 with: parameter with: array.
		^ array first ]
]

{ #category : #accessing }
GLTextureRGBA >> height [
	^ self getTextureParameterI: GL_TEXTURE_HEIGHT
]

{ #category : #accessing }
GLTextureRGBA >> image: aForm [

	self image: aForm minFilter: GL_LINEAR magFilter: GL_LINEAR
]

{ #category : #accessing }
GLTextureRGBA >> image: aForm minFilter: anEnum magFilter: anEnum2 [

	self boundDuring: [
			gl
				glTexImage2D: GL_TEXTURE_2D
				with: 0
				with: GL_RGBA
				with: aForm width
				with: aForm height
				with: 0
				with: GL_BGRA
				with: GL_UNSIGNED_BYTE
				with: (aForm asFormOfDepth: 32) bits.
			gl checkForError.
			gl
				glTexParameteri: GL_TEXTURE_2D
				with: GL_TEXTURE_MIN_FILTER
				with: anEnum.
			gl
				glTexParameteri: GL_TEXTURE_2D
				with: GL_TEXTURE_MAG_FILTER
				with: anEnum]
]

{ #category : #'initialize-release' }
GLTextureRGBA >> initializeWithContext: glContext [

	| texIDs |
	super initializeWithContext: glContext.
	texIDs := IntegerArray new: 1.
	gl glGenTextures: 1 with: texIDs.
	id := texIDs first
]

{ #category : #accessing }
GLTextureRGBA >> subImage: aForm at: aPoint [

	self boundDuring: [
		gl checkForError.
		gl
			glTexSubImage2D: GL_TEXTURE_2D
			with: 0
			with: aPoint x
			with: aPoint y
			with: aForm width
			with: aForm height
			with: GL_BGRA
			with: GL_UNSIGNED_BYTE
			with: (aForm asFormOfDepth: 32) bits.
		gl checkForError]
]

{ #category : #accessing }
GLTextureRGBA >> width [
	^ self getTextureParameterI: GL_TEXTURE_WIDTH
]
