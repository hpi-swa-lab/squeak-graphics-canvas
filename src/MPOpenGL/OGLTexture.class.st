"
This is a wrapper for a Form, mimicking Croquet's TForms.
"
Class {
	#name : #OGLTexture,
	#superclass : #Object,
	#instVars : [
		'form',
		'bMipmap',
		'parameters',
		'updateRect'
	],
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Deprecated'
}

{ #category : #accessing }
OGLTexture >> bMipmap [
	"answer true if we want mipmapping"
	^bMipmap == true
]

{ #category : #accessing }
OGLTexture >> bMipmap: aBoolean [
	bMipmap := aBoolean

]

{ #category : #updating }
OGLTexture >> boundingBox [
	^form boundingBox
]

{ #category : #accessing }
OGLTexture >> form: aForm [
	form := aForm asFormOfDepth: 32.
	self invalidate.


]

{ #category : #updating }
OGLTexture >> invalidate [
	updateRect := form boundingBox.

]

{ #category : #updating }
OGLTexture >> invalidate: aRectangle [
	aRectangle area > 0 ifTrue: [
		updateRect := updateRect ifNil: [aRectangle]
			ifNotNil: [updateRect quickMerge: aRectangle]].

]

{ #category : #testing }
OGLTexture >> isStatic [
	^false
]

{ #category : #testing }
OGLTexture >> isThumb [
	^false
]

{ #category : #accessing }
OGLTexture >> magFilter [
	^self parameters at: GLTextureMagFilter ifAbsent: [GLLinear]
]

{ #category : #accessing }
OGLTexture >> minFilter [
	^self parameters at: GLTextureMinFilter ifAbsent: [
		self bMipmap
			ifTrue: [GLLinearMipmapLinear]
			ifFalse: [GLLinear]]
]

{ #category : #accessing }
OGLTexture >> objectID [
	"fake - this is used to detect changed forms. If objectID changes, form is uploaded again"
	^form
]

{ #category : #accessing }
OGLTexture >> parameterAt: pname put: param [
	(parameters ifNil: [parameters := Dictionary new])
		at: pname put: param
]

{ #category : #accessing }
OGLTexture >> parameters [
	^parameters ifNil: [{}]
]

{ #category : #'as yet unclassified' }
OGLTexture >> putAtGL: gl Uniform: location [
	gl glActiveTexture: gl GL_TEXTURE0.
	gl bindTexture: self.
	gl glUniform1i: location with: 0.
]

{ #category : #updating }
OGLTexture >> resetUpdateRect [
	updateRect := nil.

]

{ #category : #accessing }
OGLTexture >> sha [
	"fake - this is used as dictionary key to detect identical forms"
	^self
]

{ #category : #accessing }
OGLTexture >> target [
	^ GLTexture2d
]

{ #category : #accessing }
OGLTexture >> textureForm [
	^form
]

{ #category : #accessing }
OGLTexture >> trueExtent [
	^ form width asLargerPowerOfTwo @ form height asLargerPowerOfTwo
]

{ #category : #updating }
OGLTexture >> updateRect [
	^updateRect
]
