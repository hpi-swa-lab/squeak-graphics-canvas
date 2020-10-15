Extension { #name : #ExternalType }

{ #category : #'*OpenGL' }
ExternalType class >> GLDEBUGPROC [

	^ self void asPointerType
]

{ #category : #'*OpenGL' }
ExternalType class >> GLDEBUGPROCAMD [

	^ self GLDEBUGPROC
]

{ #category : #'*OpenGL' }
ExternalType class >> GLDEBUGPROCARB [

	^ self GLDEBUGPROC
]

{ #category : #'*OpenGL' }
ExternalType class >> GLDEBUGPROCKHR [

	^ self GLDEBUGPROC
]

{ #category : #'*OpenGL' }
ExternalType class >> GLLeglClientBufferEXT [

	^ self void asPointerType
]

{ #category : #'*OpenGL' }
ExternalType class >> GLLeglImageOES [

	^ self void asPointerType
]

{ #category : #'*OpenGL' }
ExternalType class >> GLbitfield [

	^ self uint32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLboolean [

	^ self uint32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLbyte [

	^ self int8_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLchar [

	^ self signedChar
]

{ #category : #'*OpenGL' }
ExternalType class >> GLcharARB [

	^ self GLchar
]

{ #category : #'*OpenGL' }
ExternalType class >> GLclampd [

	^ self double
]

{ #category : #'*OpenGL' }
ExternalType class >> GLclampf [

	^ self float
]

{ #category : #'*OpenGL' }
ExternalType class >> GLclampx [

	^ self int32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLdouble [

	^ self double
]

{ #category : #'*OpenGL' }
ExternalType class >> GLenum [

	^ self uint32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLfixed [

	^ self int32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLfixedARG [

	^ self GLfixed
]

{ #category : #'*OpenGL' }
ExternalType class >> GLfloat [

	^ self float
]

{ #category : #'*OpenGL' }
ExternalType class >> GLhalf [

	^ self uint16_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLhalfARB [

	^ self GLhalf
]

{ #category : #'*OpenGL' }
ExternalType class >> GLhandleARB [

	^ self int32_t "void* on Apple"
]

{ #category : #'*OpenGL' }
ExternalType class >> GLint [

	^ self int32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLint64 [

	^ self int64_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLint64EXT [

	^ self GLint64
]

{ #category : #'*OpenGL' }
ExternalType class >> GLintptr [

	^ self intptr_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLintptrARB [

	^ self GLintptr
]

{ #category : #'*OpenGL' }
ExternalType class >> GLshort [

	^ self int16_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLsizei [

	^ self int32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLsizeiptr [

	^ self intptr_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLsizeiptrARB [

	^ self GLsizeiptr
]

{ #category : #'*OpenGL' }
ExternalType class >> GLsync [

	^ self void asPointerType
]

{ #category : #'*OpenGL' }
ExternalType class >> GLubyte [

	^ self uint8_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLuint [

	^ self uint32_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLuint64 [

	^ self uint64_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLuint64EXT [

	^ self GLuint64
]

{ #category : #'*OpenGL' }
ExternalType class >> GLushort [

	^ self uint16_t
]

{ #category : #'*OpenGL' }
ExternalType class >> GLvoid [

	^ self void
]
