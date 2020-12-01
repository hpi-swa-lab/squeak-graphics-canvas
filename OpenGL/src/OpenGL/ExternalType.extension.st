Extension { #name : #ExternalType }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLDEBUGPROC [

	^ self void asPointerType
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLDEBUGPROCAMD [

	^ self GLDEBUGPROC
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLDEBUGPROCARB [

	^ self GLDEBUGPROC
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLDEBUGPROCKHR [

	^ self GLDEBUGPROC
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLLeglClientBufferEXT [

	^ self void asPointerType
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLLeglImageOES [

	^ self void asPointerType
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLbitfield [

	^ self uint32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLboolean [

	^ self bool
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLbyte [

	^ self int8_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLchar [

	^ self signedChar
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLcharARB [

	^ self GLchar
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLclampd [

	^ self double
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLclampf [

	^ self float
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLclampx [

	^ self int32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLdouble [

	^ self double
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLenum [

	^ self uint32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLfixed [

	^ self int32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLfixedARG [

	^ self GLfixed
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLfloat [

	^ self float
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLhalf [

	^ self uint16_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLhalfARB [

	^ self GLhalf
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLhandleARB [

	^ self int32_t "void* on Apple"
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLint [

	^ self int32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLint64 [

	^ self int64_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLint64EXT [

	^ self GLint64
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLintptr [

	^ self intptr_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLintptrARB [

	^ self GLintptr
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLshort [

	^ self int16_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLsizei [

	^ self int32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLsizeiptr [

	^ self intptr_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLsizeiptrARB [

	^ self GLsizeiptr
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLsync [

	^ self void asPointerType
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLubyte [

	^ self uint8_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLuint [

	^ self uint32_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLuint64 [

	^ self uint64_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLuint64EXT [

	^ self GLuint64
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLushort [

	^ self uint16_t
]

{
	#category : #'*OpenGL',
	#timestamp : ''
}
ExternalType class >> GLvoid [

	^ self void
]
