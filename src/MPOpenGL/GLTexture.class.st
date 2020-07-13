Class {
	#name : #GLTexture,
	#superclass : #GLObject,
	#category : #'MPOpenGL-Core'
}

{ #category : #binding }
GLTexture >> bind [

	gl glBindTexture: GL_TEXTURE_2D with: id
]

{ #category : #'initialize-release' }
GLTexture >> delete [

	| texIDs |
	texIDs := IntegerArray with: id.
	gl glDeleteTextures: 1 with: texIDs
]

{ #category : #accessing }
GLTexture >> extent [
	^ self width @ self height
]

{ #category : #accessing }
GLTexture >> extent: aPoint [

	self	boundDuring: [
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

{ #category : #accessing }
GLTexture >> getTextureParameterI: parameter [
	| array |
	self bind.
	array := IntegerArray new: 1.
	gl glGetTexLevelParameteriv: GL_TEXTURE_2D with: 0 with: parameter with: array.
	self unbind.
	^ array first
]

{ #category : #accessing }
GLTexture >> height [
	^ self getTextureParameterI: GL_TEXTURE_HEIGHT
]

{ #category : #accessing }
GLTexture >> image: aForm [

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
				with: GL_LINEAR.
			gl
				glTexParameteri: GL_TEXTURE_2D
				with: GL_TEXTURE_MAG_FILTER
				with: GL_LINEAR]
]

{ #category : #'initialize-release' }
GLTexture >> initializeWith: glContext [

	| texIDs |
	super initializeWith: glContext.
	texIDs := IntegerArray new: 1.
	gl glGenTextures: 1 with: texIDs.
	id := texIDs first
]

{ #category : #binding }
GLTexture >> unbind [

	gl glBindTexture: GL_TEXTURE_2D with: GL_NONE
]

{ #category : #accessing }
GLTexture >> width [
	^ self getTextureParameterI: GL_TEXTURE_WIDTH
]
