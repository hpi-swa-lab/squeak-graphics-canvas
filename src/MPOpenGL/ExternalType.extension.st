Extension { #name : #ExternalType }

{ #category : #'*MPOpenGL' }
ExternalType class >> GLDEBUGPROC [

	^ self void asPointerType
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLDEBUGPROCAMD [

	^ self GLDEBUGPROC
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLDEBUGPROCARB [

	^ self GLDEBUGPROC
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLDEBUGPROCKHR [

	^ self GLDEBUGPROC
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLLeglClientBufferEXT [

	^ self void asPointerType
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLLeglImageOES [

	^ self void asPointerType
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLbitfield [

	^ self uint32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLboolean [

	^ self uint32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLbyte [

	^ self int8_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLchar [

	^ self signedChar
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLcharARB [

	^ self GLchar
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLclampd [

	^ self double
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLclampf [

	^ self float
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLclampx [

	^ self int32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLdouble [

	^ self double
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLenum [

	^ self uint32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLfixed [

	^ self int32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLfixedARG [

	^ self GLfixed
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLfloat [

	^ self float
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLhalf [

	^ self uint16_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLhalfARB [

	^ self GLhalf
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLhandleARB [

	^ self int32_t "void* on Apple"
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLint [

	^ self int32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLint64 [

	^ self int64_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLint64EXT [

	^ self GLint64
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLintptr [

	^ self intptr_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLintptrARB [

	^ self GLintptr
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLshort [

	^ self int16_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLsizei [

	^ self int32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLsizeiptr [

	^ self intptr_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLsizeiptrARB [

	^ self GLsizeiptr
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLsync [

	^ self void asPointerType
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLubyte [

	^ self uint8_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLuint [

	^ self uint32_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLuint64 [

	^ self uint64_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLuint64EXT [

	^ self GLuint64
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLushort [

	^ self uint16_t
]

{ #category : #'*MPOpenGL' }
ExternalType class >> GLvoid [

	^ self void
]
